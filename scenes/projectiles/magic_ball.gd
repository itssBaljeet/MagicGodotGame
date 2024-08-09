extends Area2D

@export var speed: int = 1000
var direction: Vector2 = Vector2.UP
func _ready():
	look_at(get_global_mouse_position())

func _process(delta):
	position += direction * speed * delta
