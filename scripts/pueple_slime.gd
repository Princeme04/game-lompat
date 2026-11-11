extends Area2D
@onready var timer: Timer = $Timer


func _on_body_entered(_body: Node2D) -> void:
	print("mninggal kena slime")
	get_tree().current_scene.get_node("GameOverMenuSlime").visible = true
	get_tree().paused = true

#func _on_timer_timeout() -> void:
#	get_tree().reload_current_scene()
