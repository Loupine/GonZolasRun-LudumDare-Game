extends KinematicBody2D

const _SPEED := 12

var _velocity := Vector2.ZERO

onready var animator = find_node("PlayerAnimator")


func _physics_process(delta:float)-> void:
	_handle_input(delta)
	_process_animations()
	_velocity = _velocity.limit_length(12 / delta)
	_velocity = move_and_slide(_velocity, Vector2.UP)


func _handle_input(delta:float)-> void:
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
	if Input.is_action_just_pressed("shoot"):
		animator.play("shoot_front")


func _process_animations()-> void:
	if _velocity.x > 0:
		animator.set_animation("shoot_side")
		animator.flip_h = false
	if _velocity.x < 0:
		animator.set_animation("shoot_side")
		animator.flip_h = true
	if _velocity.y < 0:
		animator.set_animation("backside")
	if _velocity.y > 0:
		animator.set_animation("shoot_front")


func _on_PlayerAnimator_animation_finished()-> void:
	animator.stop()
