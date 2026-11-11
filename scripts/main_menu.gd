extends ColorRect

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$StartButton.pressed.connect(_on_start_button_pressed)
	$SettingsButton.pressed.connect(_on_settings_button_pressed)
	$QuitButton.pressed.connect(_on_quit_button_pressed)
	# Replace with function body.

func _on_start_button_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/Gameplay.tscn") # Replace with function body.
	
func _on_quit_button_pressed() -> void:
	get_tree().quit() # Replace with function body.


func _on_settings_button_pressed() -> void:
	Global.previous_scene_path = "res://scenes/main_menu.tscn"
	get_tree().change_scene_to_file("res://scenes/settings.tscn")


func _on_button_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/main_menu.tscn") # Replace with function body.

@onready var canvas_layer: CanvasLayer = $CanvasLayer

func _on_credit_pressed() -> void:
	canvas_layer.show() # Replace with function body.
