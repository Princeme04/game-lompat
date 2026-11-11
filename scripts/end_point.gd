extends Area2D


func _on_body_entered(_body: Node2D) -> void:
	print("klar bosz")
	queue_free()
	get_tree().current_scene.get_node("Finish").visible = true
