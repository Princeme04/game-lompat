extends CanvasLayer

@onready var restart_button: Button = $Control/RestartButton
@onready var settings_button: Button = $Control/SettingsButton
@onready var quit_button: Button = $Control/QuitButton

func _ready() -> void:
	restart_button.pressed.connect(_on_restart_pressed)
	settings_button.pressed.connect(_on_settings_pressed)
	quit_button.pressed.connect(_on_quit_pressed)

func _on_restart_pressed() -> void:
	get_tree().paused = false
	get_tree().reload_current_scene()

func _on_settings_pressed() -> void:
	Global.previous_scene_path = "res://scenes/Gameplay.tscn"
	Global.came_from_game_over = true
	get_tree().paused = false   # ⚠️ WAJIB, biar Settings scene gak ikut freeze
	get_tree().change_scene_to_file("res://scenes/settings.tscn")
func _on_quit_pressed() -> void:
	get_tree().quit()
	
