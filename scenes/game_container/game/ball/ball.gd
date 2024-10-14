extends RigidBody2D

func _ready():
	contact_monitor = true
	max_contacts_reported = 10
	linear_damp_mode = 1
	linear_damp = 0
	gravity_scale = 0
	var launch_angle = randf_range(-PI/8, PI/8)
	var vector = Vector2(0, -400).rotated(launch_angle)
	apply_central_impulse(vector)


func _process(delta):
	pass

func _physics_process(delta):
	if position.y > get_viewport_rect().size.y:
		Signals.ball_off_screen.emit()
		set_process(false)
		queue_free()
