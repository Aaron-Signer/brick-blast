extends RigidBody2D

@export var number_of_hits: int = 1
@onready var label: Label = $Label


# Called when the node enters the scene tree for the first time.
func _ready():
	contact_monitor = true
	max_contacts_reported = 10
	freeze = true
	freeze_mode = 1
	label.text = str(number_of_hits)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_body_entered(body):
	number_of_hits -= 1
	if (number_of_hits == 0):
		queue_free()
		
	label.text = str(number_of_hits)
