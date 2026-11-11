extends Node2D

@onready var game_over_menu: CanvasLayer = $GameOverMenu

func _ready() -> void:
	if Global.came_from_game_over:
		game_over_menu.visible = true
		get_tree().paused = true
		Global.came_from_game_over = false


func _on_main_menu_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/main_menu.tscn") # Replace with function body.
