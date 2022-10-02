extends KinematicBody2D

const _SPEED := 12

var _velocity := Vector2.ZERO


func _physics_process(delta:float)-> void:
	_handle_input(delta)
	_velocity = _velocity.clamped(12) / delta
	_velocity = move_and_slide(_velocity, Vector2.UP)


func _handle_input(delta:float):
	if Input.is_action_pressed("move_up"):
		_velocity.y = -_SPEED / delta
	if Input.is_action_pressed("move_down"):
		_velocity.y = _SPEED / delta
	if Input.is_action_pressed("move_left"):
		_velocity.x = -_SPEED / delta
	if Input.is_action_pressed("move_right"):
		_velocity.x = _SPEED / delta
	if not (Input.is_action_pressed("move_up") or Input.is_action_pressed("move_down")):
		_velocity.y = 0.0
	if not (Input.is_action_pressed("move_left") or Input.is_action_pressed("move_right")):
		_velocity.x = 0.0
		
