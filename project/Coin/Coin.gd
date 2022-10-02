extends KinematicBody2D


signal collided


func _physics_process(_delta:float)-> void:
	_process_collisions()
	var _velocity = move_and_slide(Vector2.ZERO, Vector2.UP)


func _process_collisions()-> void:
	for collision in get_slide_count():
		if get_slide_collision(collision).collider.is_class("KinematicBody2D"):
			var collider : KinematicBody2D = get_slide_collision(collision).collider
			if collider.name == "Player":
				emit_signal("collided")
				queue_free()
