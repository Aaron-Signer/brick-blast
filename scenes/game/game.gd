extends Node2D

@export var ball: PackedScene


# Called when the node enters the scene tree for the first time.
func _ready():
	Signals.launch_ball.connect(start)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func start():
	var ball = ball.instantiate()
	add_child(ball)
