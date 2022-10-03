extends KinematicBody2D


signal shot_fired(x_velocity, y_velocity)

const _SPEED := 14

var _velocity := Vector2.ZERO
var _is_dead := false
var score := 0

onready var score_label := get_node("Camera/HUD/Score")
onready var reset_button := get_node("Camera/HUD/ResetButton")
onready var animator := get_node("PlayerAnimator")
onready var collision_shape := get_node("PlayerCollision")


func _physics_process(delta:float)-> void:
	_handle_input(delta)
	_process_animations()
	_process_collisions()
	_velocity = _velocity.limit_length(_SPEED / delta)
	_velocity = move_and_slide(_velocity, Vector2.UP)
	
	if reset_button.pressed:
		# warning-ignore:return_value_discarded
		get_tree().change_scene("res://TitleScreen/TitleScreen.tscn")


func increase_score()-> void:
	score += 100
	score_label.set_text("Score:" + String(score))


func _handle_input(delta:float)-> void:
	if _is_dead == false:
		if Input.is_action_pressed("move_up"):
			_velocity.y = -_SPEED / delta
		if Input.is_action_pressed("move_down"):
			_velocity.y = _SPEED / delta
		if Input.is_action_pressed("move_left"):
			_velocity.x = -_SPEED / delta
		if Input.is_action_pressed("move_right"):
			_velocity.x = _SPEED / delta
		if Input.is_action_just_pressed("shoot"):
			animator.set_playing(true)
			emit_signal("shot_fired", clamp(_velocity.x, -1.0, 1.0), clamp(_velocity.y, -1.0, 1.0))
	if not (Input.is_action_pressed("move_up") or Input.is_action_pressed("move_down")):
		_velocity.y = 0.0
	if not (Input.is_action_pressed("move_left") or Input.is_action_pressed("move_right")):
		_velocity.x = 0.0


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


func _process_collisions()-> void:
	for i in get_slide_count():
		var collision := get_slide_collision(i)
		if collision.collider.is_in_group("enemies"):
			_die()


func _die()-> void:
	collision_shape.disabled = true
	_is_dead = true
	animator.visible = false
	reset_button.rect_position = Vector2(-125, 143)


func _on_PlayerAnimator_animation_finished()-> void:
	animator.stop()
