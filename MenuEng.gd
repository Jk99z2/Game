extends Control


func _ready():
	Input.set_mouse_mode(Input.MOUSE_MODE_VISIBLE)


func _on_Play_pressed():
	get_tree().change_scene("res://LoadinLVL.tscn")


func _on_Options_pressed():
	get_node("Play").visible = false
	get_node("Options").visible = false
	get_node("Quit").visible = false
	get_node("Sound").visible = true
	get_node("Language").visible = true
	get_node("Regresar").visible = true


func _on_Quit_pressed():
	get_tree().quit()


func _on_Credits_pressed():
	get_tree().change_scene("res://Creditos/CreditEng.tscn")
	


func _on_Controls_pressed():
	get_node("Play").visible = false
	get_node("Options").visible = false
	get_node("Quit").visible = false
	get_node("Sound").visible = false
	get_node("Language").visible = false
	get_node("Regresar").visible = false
	get_node("RegresarMenu").visible = false
	get_node("KinematicBody2D").visible = false
	get_node("ParallaxBackground/Player").visible = true
	get_node("RegresarMenu").visible = true
	get_node("Key").visible = true
	get_node("text12").visible = false

func _on_Sound_pressed():
	pass # Replace with function body.


func _on_Language_pressed():
	get_node("Español").visible = true
	get_node("Sound").visible = false
	get_node("Language").visible = false
	get_node("Regresar").visible = true


func _on_Espaol_pressed():
	get_tree().change_scene("res://Escenas/MenuEs.tscn")


func _on_RegresarM_pressed():
	pass # Replace with function body.


func _on_RegresarMenu_pressed():
	get_node("Play").visible = true
	get_node("Options").visible = true
	get_node("Quit").visible = true
	get_node("Sound").visible = false
	get_node("Language").visible = false
	get_node("Regresar").visible = false
	get_node("RegresarMenu").visible = false
	get_node("Key").visible = false
	get_node("text12").visible = true
	get_node("KinematicBody2D").visible = true
	get_node("ParallaxBackground/Player").visible = false

func _on_Regresar_pressed():
	get_node("Español").visible = false
	get_node("Sound").visible = true
	get_node("Language").visible = true
	get_node("RegresarM").visible = false
	get_node("Regresar").visible = false
	get_node("RegresarMenu").visible = true
