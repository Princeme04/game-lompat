extends Area2D
#@onready var timer: Timer = $Timer

func _on_body_entered(_body: Node2D) -> void:
	print("mninggal")
	get_tree().current_scene.get_node("GameOverMenu").visible = true
	get_tree().paused = true
#	timer.start()

#func _on_timer_timeout() -> void:
#	get_tree().paused = false  # unpause dulu sebelum reload
#	get_tree().reload_current_scene()
