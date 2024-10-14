extends Node

@export var main_menu: PackedScene
@export var game: PackedScene

var main_menu_node: Node
var game_node: Node


# Called when the node enters the scene tree for the first time.
func _ready():
	main_menu_node = main_menu.instantiate()
	add_child(main_menu_node)
	Signals.level_selected.connect(start_level)
	


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func start_level(level: String):
	main_menu_node.queue_free()

	game_node = game.instantiate()
	game_node.level = level

	add_child(game_node)
