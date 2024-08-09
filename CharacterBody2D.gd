extends CharacterBody2D

var direction: Vector2 = Vector2.LEFT
var playerPos: Vector2

func _process(delta):
	velocity = 1800 * (playerPos - position).normalized() * delta
	move_and_slide()
	
	var direction = (playerPos - position).normalized().x

	if direction < 0:
		$AnimatedSprite2D.flip_h = true
	elif direction > 0:
		$AnimatedSprite2D.flip_h = false
		
func _on_player_handpos(pos):
	playerPos = pos