extends Node2D

@export var ball: PackedScene
@export var start_game_label: PackedScene

# Called when the node enters the scene tree for the first time.
func _ready():
	restart()
	Signals.launch_ball.connect(start)
	Signals.ball_off_screen.connect(restart)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func start():
	start_game_label.queue_free()
	var ball = ball.instantiate()
	add_child(ball)
	
func restart():
	var label = start_game_label.instantiate()
	add_child(label)
