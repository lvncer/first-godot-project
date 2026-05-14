extends Control

func _ready():
	var bg = ColorRect.new()
	bg.color = Color.BLACK
	bg.set_anchors_preset(Control.PRESET_FULL_RECT)
	add_child(bg)

	var label = Label.new()
	label.text = "GAME STARTED"
	label.position = Vector2(500, 300)
	label.add_theme_font_size_override("font_size", 32)
	add_child(label)
