extends Control


func _ready():
	pass

func _on_Jugar_pressed():
# warning-ignore:return_value_discarded
	get_tree().change_scene("res://Loadlvl.tscn")

func _on_Salir_pressed():
	get_tree().quit()

func _on_Creditos_pressed():
	get_tree().change_scene("res://Creditos/CreditEs.tscn")

func _on_Opciones_pressed():
	get_node("Jugar").visible = false
	get_node("Opciones").visible = false
	get_node("Salir").visible = false
	get_node("Sonido").visible = true
	get_node("Idioma").visible = true
	get_node("Regresar").visible = true


func _on_RegresarM_pressed():
	get_node("Jugar").visible = true
	get_node("Opciones").visible = true
	get_node("Salir").visible = true
	get_node("Sonido").visible = false
	get_node("Idioma").visible = false
	get_node("Regresar").visible = false



func _on_Idioma_pressed():
	get_node("Ingles").visible = true
	get_node("Sonido").visible = false
	get_node("Idioma").visible = false
	get_node("Regresar").visible = true


func _on_Regresar_pressed():
	get_node("Ingles").visible = false
	get_node("Sonido").visible = true
	get_node("Idioma").visible = true
	get_node("RegresarM").visible = false
	get_node("Regresar").visible = false
	get_node("RegresarMenu").visible = true
	


func _on_RegresarMenu_pressed():
	get_node("Jugar").visible = true
	get_node("Opciones").visible = true
	get_node("Salir").visible = true
	get_node("Sonido").visible = false
	get_node("Idioma").visible = false
	get_node("Regresar").visible = false
	get_node("RegresarMenu").visible = false
