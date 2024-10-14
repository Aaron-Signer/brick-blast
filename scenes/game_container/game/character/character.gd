extends CharacterBody2D

@export var ball: PackedScene
var ball_node: RigidBody2D

# Called when the node enters the scene tree for the first time.
func _ready():
	add_ball()
	Signals.launch_ball.connect(start)
	Signals.ball_off_screen.connect(add_ball)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
	
func _physics_process(delta):
	if (Input.is_action_pressed("left")):
		velocity = Vector2(-800,0)
		move_and_slide()
	if (Input.is_action_pressed("right")):
		velocity = Vector2(800,0)
		move_and_slide()
		
func start():
	ball_node.queue_free()
	
func add_ball():
	ball_node = ball.instantiate()
	ball_node.position = Vector2(0, -27.54)
	ball_node.freeze = true
	add_child(ball_node)
	
