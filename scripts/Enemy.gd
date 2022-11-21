extends KinematicBody2D

var speed = 100
var velocity = Vector2.ZERO
onready var target = get_node("../Player")

func _physics_process(delta):
	velocity = Vector2.ZERO
	velocity = position.direction_to(target.position) * speed
	velocity = move_and_slide(velocity)

func _on_screen_exited():
	print("dead")
	queue_free()
