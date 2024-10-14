extends Node

@export var main_menu: PackedScene
@export var game: PackedScene
@export var level_select: PackedScene

var main_menu_node: Node
var game_node: Node
var level_select_node: Node


# Called when the node enters the scene tree for the first time.
func _ready():
	navigate_to_main_menu()
	Signals.level_selected.connect(start_level)
	Signals.navigate_to_level_select.connect(navigate_to_level_select)
	Signals.navigate_to_main_menu.connect(navigate_to_main_menu)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
	
func navigate_to_main_menu():
	remove_all_children()
	main_menu_node = main_menu.instantiate()
	add_child(main_menu_node)
	
func navigate_to_level_select():
	remove_all_children()
	level_select_node = level_select.instantiate()
	add_child(level_select_node)
	

func start_level(level: String):
	remove_all_children()

	game_node = game.instantiate()
	game_node.level = level

	add_child(game_node)
	
func remove_all_children():
	for child in get_children():
		child.queue_free()
