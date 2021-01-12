extends VideoPlayer

# warning-ignore:unused_argument
func _physics_process(delta):
	if Input.is_action_pressed("ui_accept"):
# warning-ignore:return_value_discarded
		get_tree().change_scene("res://Escenas/MenuEng.tscn")


func _on_VideoPlayer_finished():
# warning-ignore:return_value_discarded
	get_tree().change_scene("res://Escenas/MenuEng.tscn")
