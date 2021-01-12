extends Control


func _ready():
	visible = false


func _on_Button_pressed():
	pass

func _on_Button2_pressed():
	get_tree().change_scene("res://Escenas/LoadingScreen.tscn")
