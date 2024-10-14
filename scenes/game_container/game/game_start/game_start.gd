extends Control

@onready var levelLabel: Label = $LevelLabel

var level: String


# Called when the node enters the scene tree for the first time.
func _ready():
	levelLabel.text = "Level " + level


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
