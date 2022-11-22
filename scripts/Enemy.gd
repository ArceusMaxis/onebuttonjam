extends KinematicBody2D

var speed = rand_range(300,900)
var velocity = Vector2.ZERO
onready var target = get_node("../Player")
var deadfx = preload("res://scenes/Deathfx.tscn")

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
		var dinst = deadfx.instance()
		get_parent().add_child(dinst)
		dinst.global_position = global_position
