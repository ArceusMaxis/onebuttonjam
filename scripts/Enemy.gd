extends KinematicBody2D

var speed = 300
var velocity = Vector2.ZERO
onready var target = get_node("../Player")

func _physics_process(delta):
	velocity = Vector2.ZERO
	look_at(target.position)
	velocity = position.direction_to(target.position) * speed
	velocity = move_and_slide(velocity)
	

func _on_screen_exited():
	queue_free()


func _on_Enemybox_area_entered(area):
	if area.is_in_group("shield"):
		queue_free()
