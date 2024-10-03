extends RigidBody2D



# Called when the node enters the scene tree for the first time.
func _ready():
	contact_monitor = true
	max_contacts_reported = 10
	gravity_scale = 0
	#apply_central_impulse(Vector2(100,0))
	add_constant_central_force(Vector2(100,0))


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _physics_process(delta):
	pass
	
	

func _on_body_entered(body):
	print("here", linear_velocity.x)
	linear_velocity.y = -1*linear_velocity.y
