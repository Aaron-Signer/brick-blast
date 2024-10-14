extends Control



# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _level_1_on_button_pressed():
	Signals.level_selected.emit("1")


func _level_2_on_button_2_pressed():
	Signals.level_selected.emit("2")
