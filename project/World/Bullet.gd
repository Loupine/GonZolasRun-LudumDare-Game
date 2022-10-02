extends KinematicBody2D


var _velocity : Vector2 setget set_velocity


func _physics_process(_delta:float)-> void:
	_velocity = move_and_slide(_velocity, Vector2.UP)


func set_velocity(velocity_vector:Vector2)-> void:
	_velocity = velocity_vector
