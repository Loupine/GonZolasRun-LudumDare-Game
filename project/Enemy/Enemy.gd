extends KinematicBody2D


const _SPEED := 8

var player : KinematicBody2D
var _velocity := Vector2.ZERO

onready var _collision := get_node("EnemyCollision")


func _physics_process(delta:float)-> void:
	var rotation_angle := (player.position - position).angle()
	_velocity.x = _SPEED / delta
	_velocity = _velocity.limit_length(_SPEED / delta)
	_velocity = move_and_slide(_velocity.rotated(rotation_angle), Vector2.UP)


func set_player(player_node:KinematicBody2D)-> void:
	player = player_node
