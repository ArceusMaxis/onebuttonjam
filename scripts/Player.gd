extends KinematicBody2D

var shield = preload("res://scenes/Shield.tscn")
var sh = shield.instance()

func get_input():
	if Input.is_action_just_released("spacebar"):
		remove_child(sh)
	elif Input.is_action_just_pressed("spacebar"):
		add_child(sh)

func _physics_process(delta):
	get_input()

func _on_Hitbox_entered(body):
	if body.is_in_group("enemy"):
		get_tree().quit()
