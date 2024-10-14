extends Control


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_level_1_button_pressed():
	Signals.level_selected.emit("1")


func _on_level_2_button_pressed():
	Signals.level_selected.emit("2")


func _on_main_menu_button_pressed():
	Signals.navigate_to_main_menu.emit()
