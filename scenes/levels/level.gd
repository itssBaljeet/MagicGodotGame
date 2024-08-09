extends Node2D
class_name LevelDefault

var magic_ball_scene: PackedScene = preload("res://scenes/projectiles/magic_ball.tscn")
var ballScale: Vector2 = Vector2(2, 2)

func _on_player_spell_input(pos, direction):
	var ball = magic_ball_scene.instantiate() as Area2D
	ball.position = pos
	ball.rotation_degrees = rad_to_deg(direction.angle())
	ball.direction = direction
	$Projectiles.add_child(ball)
	



func _on_player_second_spell_input(pos, direction):
	var turbo_ball = magic_ball_scene.instantiate() as Area2D
	turbo_ball.position = pos
	turbo_ball.rotation_degrees = rad_to_deg(direction.angle())
	turbo_ball.direction = direction
	turbo_ball.scale = ballScale
	turbo_ball.modulate = Color(0.85, 0.55, 0.70, 1.0)
	$Projectiles.add_child(turbo_ball)


func _on_wizard_tower_player_entered_door(body):
	print("Entered wizard tower")
	print(body)
