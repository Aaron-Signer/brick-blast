extends RigidBody2D



# Called when the node enters the scene tree for the first time.
func _ready():
	contact_monitor = true
	max_contacts_reported = 10
	linear_damp_mode = 1
	linear_damp = 0
	gravity_scale = 0
	#custom_integrator = true
	#apply_central_impulse(Vector2(100,0))
	apply_central_impulse(Vector2(0,-400))


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

#func _physics_process(delta):
	#
	
#func _integrate_forces(state: PhysicsDirectBodyState2D):
	#state.add_constant_central_force(Vector2(100,0))

#func _on_body_entered(body: Node):
	#print(body.get_class())
	#if !body.is_class("CharacterBody2D"):
		#body.queue_free()
