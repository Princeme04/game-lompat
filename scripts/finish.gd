extends CanvasLayer

@onready var restart_button_2: Button = $Control/RestartButton2
@onready var quit_button_2: Button = $Control/QuitButton2

func _ready() -> void:
	restart_button_2.pressed.connect(_on_restart_pressed)
	quit_button_2.pressed.connect(_on_quit_pressed)
	
func _on_restart_pressed() -> void:
	get_tree().reload_current_scene()
	
func _on_quit_pressed() -> void:
	get_tree().quit()
