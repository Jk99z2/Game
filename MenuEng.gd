extends Control


func _ready():
	pass


func _on_Play_pressed():
	get_tree().change_scene("res://Loadlvl.tscn")


func _on_Options_pressed():
	get_tree().change_scene("res//Escenas/Options")


func _on_Quit_pressed():
	get_tree().quit()


func _on_Credits_pressed():
	get_tree().change_scene("res://Creditos/CreditEng.tscn")
