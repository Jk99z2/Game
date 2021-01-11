extends Control


func _on_Jugar_pressed():
# warning-ignore:return_value_discarded
	get_tree().change_scene("res://Loadlvl.tscn")

func _on_Salir_pressed():
	get_tree().quit()
