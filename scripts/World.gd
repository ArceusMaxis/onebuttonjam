extends Node2D

var enemy = preload("res://scenes/Enemy.tscn")

func _ready():
	pass

func _on_SpawnTimer_timeout():
	var e_inst = enemy.instance()
	add_child(e_inst)
	e_inst.position = $SpawnLoc.position
	
	var nodes = get_tree().get_nodes_in_group("spawn") 
	var node = nodes[randi()%nodes.size()]
	var pos = node.position
	$SpawnLoc.position = pos
