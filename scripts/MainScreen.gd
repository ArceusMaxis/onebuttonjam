extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _process(_delta):
	if Input.is_action_pressed("spacebar"):
		get_tree().change_scene("res://scenes/World.tscn")
