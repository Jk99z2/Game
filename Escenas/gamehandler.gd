extends Node

var puntos = 0
var tiempo = 120

func _ready():
	pass

func update_puntos():
	get_tree().get_nodes_in_group("puntos")[0].text = String(puntos)

func update_time():
	get_tree().get_nodes_in_group("tiempo")[0].text = String(tiempo/60) + ":" + String(tiempo%60)
