extends Area2D


signal score_increased


func _on_Coin_body_entered(body:PhysicsBody2D):
	if body.name == "Player":
		emit_signal("score_increased")
		queue_free()
