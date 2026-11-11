extends Area2D
@onready var timer: Timer = $Timer
@export var speed: float = 50.0
@export var move_distance: float = 50.0

var start_position: Vector2
var direction: int = 1

func _ready() -> void:
	start_position = position

func _physics_process(delta: float) -> void:
	position.x += speed * direction * delta

	if position.x >= start_position.x + move_distance:
		direction = -1
	elif position.x <= start_position.x - move_distance:
		direction = 1

func _on_body_entered(_body: Node2D) -> void:
	print("mninggal kena slime")
	timer.start()


func _on_timer_timeout() -> void:
	get_tree().reload_current_scene()
