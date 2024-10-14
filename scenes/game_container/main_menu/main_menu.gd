extends Control

@onready var gameTitleRichTextLabel: RichTextLabel = $GameTitleRichTextLabel

# Called when the node enters the scene tree for the first time.
func _ready():	
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
	#var vector = get_viewport().get_mouse_position() - get_viewport().get_visible_rect().size/2
	#vector = vector.normalized()
	#vector.x = vector.x*10
	#vector.y = vector.y*20
	#gameTitleRichTextLabel.add_theme_constant_override("shadow_offset_x", vector.x) 
	#gameTitleRichTextLabel.add_theme_constant_override("shadow_offset_y", vector.y) 
	

func _on_levels_button_pressed():
	Signals.navigate_to_level_select.emit()
