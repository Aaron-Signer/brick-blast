extends CharacterBody2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _physics_process(delta):
	if (Input.is_action_pressed("left")):
		velocity = Vector2(-400,0)
		move_and_slide()
	if (Input.is_action_pressed("right")):
		velocity = Vector2(400,0)
		move_and_slide()
		
