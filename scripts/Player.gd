extends KinematicBody2D


func _on_body_entered(body):
	if body.is_in_group("enemy"):
		body.queue_free()