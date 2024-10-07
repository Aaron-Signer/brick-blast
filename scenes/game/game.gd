extends Node2D

@export var ball: PackedScene
@export var start_game_label: PackedScene
var start_game_label_node: Node
var game_in_progress: bool = false

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
	var ball = ball.instantiate()
	add_child(ball)
	
func end_game():
	game_in_progress = false
	start_game_label_node = start_game_label.instantiate()
	add_child(start_game_label_node)
