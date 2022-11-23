extends Control

func _process(_delta):
	if Input.is_action_just_pressed("spacebar"):
		get_tree().change_scene("res://scenes/World.tscn")

func _on_button_pressed():
	get_tree().change_scene("res://scenes/World.tscn")
