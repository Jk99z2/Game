extends Control

func _ready():
	Input.set_mouse_mode(Input.MOUSE_MODE_VISIBLE)

func _on_Button_pressed():
	get_tree().change_scene("res://Escenas/Nivel1.tscn")
	gamehandler.tiempo = 120
	gamehandler.puntos = 0


func _on_Button2_pressed():
	get_tree().change_scene("res://Escenas/LoadingScreen.tscn")
