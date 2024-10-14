extends Node2D

@export var ball: PackedScene
@export var start_game_label: PackedScene
@export var main_menu: PackedScene

var start_game_label_node: Node
var main_menu_node: Node
var level_node: Node2D
var game_in_progress: bool = false

var level: String

# Called when the node enters the scene tree for the first time.
func _ready():
	end_game()
	Signals.launch_ball.connect(start)
	Signals.ball_off_screen.connect(end_game)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if (!game_in_progress && Input.is_action_just_pressed("start")):
		Signals.launch_ball.emit()

func start():
	game_in_progress = true
	start_game_label_node.queue_free()
	
	var level_scene_path = "res://scenes/levels/level_" + level + "/level_" + level + ".tscn"
	var imported_resource: PackedScene = load(level_scene_path)
	level_node = imported_resource.instantiate()
	
	level_node = imported_resource.instantiate()
	add_child(level_node)
	var ball = ball.instantiate()
	add_child(ball)
	
func end_game():
	game_in_progress = false
	start_game_label_node = start_game_label.instantiate()
	add_child(start_game_label_node)
	
	if (level_node != null):
		level_node.queue_free()
