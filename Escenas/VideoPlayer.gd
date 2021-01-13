extends VideoPlayer

func _ready():
	Input.set_mouse_mode(Input.MOUSE_MODE_VISIBLE)

func _on_Loading_finished():
	get_tree().change_scene("res://Escenas/MenuEs.tscn")
