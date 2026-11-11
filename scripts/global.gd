extends Node
var came_from_game_over: bool = false
var previous_scene_path: String = "res://scenes/main_menu.tscn"

var master_volume: float = 100.0
var music_volume: float = 100.0
var sfx_volume: float = 100.0

func _ready() -> void:
	# biar volume ke-apply pas game baru start juga
	apply_audio_settings()

func apply_audio_settings() -> void:
	AudioServer.set_bus_volume_db(AudioServer.get_bus_index("Master"), linear_to_db(master_volume / 100.0))
	AudioServer.set_bus_volume_db(AudioServer.get_bus_index("Music"), linear_to_db(music_volume / 100.0))
	AudioServer.set_bus_volume_db(AudioServer.get_bus_index("SFX"), linear_to_db(sfx_volume / 100.0))
