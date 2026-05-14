extends Control

func _ready():
	# 背景
	var bg = ColorRect.new()
	bg.color = Color(0.05, 0.05, 0.05)
	bg.set_anchors_preset(Control.PRESET_FULL_RECT)
	add_child(bg)

	# タイトル
	var title = Label.new()
	title.text = "MONITOR SYSTEM 2"
	title.horizontal_alignment = HORIZONTAL_ALIGNMENT_CENTER
	title.position = Vector2(0, 120)
	title.size = Vector2(1280, 50)
	title.add_theme_font_size_override("font_size", 40)
	add_child(title)

	# STARTボタン
	var start_button = Button.new()
	start_button.text = "START"
	start_button.position = Vector2(540, 300)
	start_button.size = Vector2(200, 60)
	start_button.pressed.connect(_on_start_pressed)
	add_child(start_button)

	# EXITボタン
	var exit_button = Button.new()
	exit_button.text = "EXIT"
	exit_button.position = Vector2(540, 380)
	exit_button.size = Vector2(200, 60)
	exit_button.pressed.connect(_on_exit_pressed)
	add_child(exit_button)


func _on_start_pressed():
	get_tree().change_scene_to_file("res://scenes/game.tscn")


func _on_exit_pressed():
	get_tree().quit()
