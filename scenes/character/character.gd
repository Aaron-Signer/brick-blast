extends CharacterBody2D

# Called when the node enters the scene tree for the first time.
func _ready():
	Signals.launch_ball.connect(start)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if (Input.is_action_just_pressed("start")):
		Signals.launch_ball.emit()

func _physics_process(delta):
	if (Input.is_action_pressed("left")):
		velocity = Vector2(-800,0)
		move_and_slide()
	if (Input.is_action_pressed("right")):
		velocity = Vector2(800,0)
		move_and_slide()
		
func start():
	print("start")
