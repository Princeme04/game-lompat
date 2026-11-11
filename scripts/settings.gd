extends ColorRect

@onready var back_button: Button = $BackButton
@onready var save_button: Button = $SaveButton
@onready var master_slider: HSlider = $MasterSlider
@onready var music_slider: HSlider = $MusicSlider
@onready var sfx_slider: HSlider = $SFXSlider

func _ready() -> void:
	back_button.pressed.connect(_on_back_button_pressed)
	save_button.pressed.connect(_on_save_button_pressed)

	# opsional: load nilai slider dari value yang tersimpan sebelumnya
	master_slider.value = Global.master_volume
	music_slider.value = Global.music_volume
	sfx_slider.value = Global.sfx_volume

func _on_back_button_pressed() -> void:
	get_tree().change_scene_to_file(Global.previous_scene_path)

func _on_save_button_pressed() -> void:
	# simpan value slider ke Global (biar gak ke-reset kalau ganti scene)
	Global.master_volume = master_slider.value
	Global.music_volume = music_slider.value
	Global.sfx_volume = sfx_slider.value

	Global.apply_audio_settings()

	print("berhasil menyimpan perubahan")
	print("Master: ", master_slider.value, " | Music: ", music_slider.value, " | SFX: ", sfx_slider.value)
