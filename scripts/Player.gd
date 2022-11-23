extends KinematicBody2D

var shield = preload("res://scenes/Shield.tscn")
var sh = shield.instance()

func get_input():
	
	if Input.is_action_just_pressed("spacebar"):
		add_child(sh)
	else:
		remove_child(sh)

func _physics_process(delta):
	get_input()

