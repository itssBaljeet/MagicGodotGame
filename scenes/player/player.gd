extends CharacterBody2D


func _process(delta):
	# input
	var direction = Input.get_vector("left", "right", "up", "down")
	velocity = direction * 100
	$Hands.look_at(get_global_mouse_position())
	$Hands.rotation += 67.5
	move_and_slide()
