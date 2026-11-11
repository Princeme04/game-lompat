extends Area2D

@onready var pickup_sound: AudioStreamPlayer2D = $PickupSound
@onready var animation_player: AnimationPlayer = $AnimationPlayer


func _on_body_entered(_body: Node2D) -> void:
	print("anjay dpt koin boz")
	animation_player.play("pickup_animation")
	pickup_sound.play()
	await pickup_sound.finished
	queue_free()
