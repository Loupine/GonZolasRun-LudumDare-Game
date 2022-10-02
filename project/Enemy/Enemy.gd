extends KinematicBody2D


const _SPEED := 8

var player : KinematicBody2D
var _velocity := Vector2.ZERO


func _physics_process(delta:float)-> void:
	var rotation_angle := (player.position - position).angle()
	_velocity.x = _SPEED / delta
	_velocity = _velocity.limit_length(_SPEED / delta)
	_velocity = move_and_slide(_velocity.rotated(rotation_angle), Vector2.UP)
	
	_process_collisions()


func _process_collisions()-> void:
	for collision in get_slide_count():
		if get_slide_collision(collision).collider.is_class("KinematicBody2D"):
			var collider : KinematicBody2D = get_slide_collision(collision).collider
			if collider.name == "Player":
				collider.queue_free()


func set_player(player_node:KinematicBody2D)-> void:
	player = player_node
