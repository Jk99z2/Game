extends VideoPlayer

func _ready():
	Input.set_mouse_mode(Input.MOUSE_MODE_VISIBLE)
	
func _physics_process(delta):
	if Input.is_action_pressed("ui_accept"):
# warning-ignore:return_value_discarded
		get_tree().change_scene("res://Escenas/MenuEs.tscn")


func _on_VideoPlayer_finished():
# warning-ignore:return_value_discarded
	get_tree().change_scene("res://Escenas/MenuEs.tscn")
