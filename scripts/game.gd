extends Control

func _ready():
	var bg = ColorRect.new()
	bg.color = Color.BLACK
	bg.set_anchors_preset(Control.PRESET_FULL_RECT)
	add_child(bg)

	var label = Label.new()
	label.text = "GAME CLEAR!!"
	label.position = Vector2(500, 300)
	label.add_theme_font_size_override("font_size", 32)
	add_child(label)

	# RETURNボタン
	var start_button = Button.new()
	start_button.text = "RETURN"
	start_button.position = Vector2(540, 300)
	start_button.size = Vector2(200, 60)
	start_button.pressed.connect(_on_start_pressed)
	add_child(start_button)


func _on_start_pressed():
	get_tree().change_scene_to_file("res://scenes/main.tscn")
