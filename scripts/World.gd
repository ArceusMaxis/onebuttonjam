extends Node2D

var enemy = preload("res://scenes/Enemy.tscn")
var spawntime = rand_range(0.25,1)

func _physics_process(_delta):
	$SpawnTimer.wait_time = spawntime

func _on_SpawnTimer_timeout():
	var e_inst = enemy.instance()
	add_child(e_inst)
	e_inst.position = $SpawnLoc.position
	
	var nodes = get_tree().get_nodes_in_group("spawn") 
	var node = nodes[randi()%nodes.size()]
	var pos = node.position
	$SpawnLoc.position = pos
