extends Node

func _physics_process(delta):
	if Input.is_action_just_pressed("ANY"):
		get_tree().change_scene("res://Escenas/Introduccion.tscn") 
