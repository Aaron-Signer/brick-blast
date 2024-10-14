extends RigidBody2D

@export var number_of_hits: int = 1
@onready var label: Label = $Label
@onready var sprite2D: Sprite2D = $Sprite2D


# Called when the node enters the scene tree for the first time.
func _ready():
	calculate_brick_color()
	
	contact_monitor = true
	max_contacts_reported = 10
	freeze = true
	freeze_mode = 1
	label.text = str(number_of_hits)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_body_entered(body):
	calculate_brick_color()
	number_of_hits -= 1
	if (number_of_hits == 0):
		queue_free()
		
	label.text = str(number_of_hits)

func calculate_brick_color():
	if number_of_hits >= 11:
		var color = (number_of_hits - 10.0)/5.0
		sprite2D.modulate = Color(color, 0, 0, 1)
	if number_of_hits >= 6 && number_of_hits <= 10:
		var color = (number_of_hits - 5.0)/5.0
		sprite2D.modulate = Color(0, color, 0, 1)
	if number_of_hits <= 5:
		var color = number_of_hits/5.0
		sprite2D.modulate = Color(0, 0, color, 1)
