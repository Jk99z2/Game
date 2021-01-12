extends Control

func _physics_process(delta):
	if Input.is_action_just_pressed("Escape"):
		if get_tree().paused == true:
			get_tree().paused = false
			get_node("Timer").paused = false
			Input.set_mouse_mode(Input.MOUSE_MODE_HIDDEN)
		else:
			get_tree().paused = true
			get_node("Timer").paused = true
			Input.set_mouse_mode(Input.MOUSE_MODE_VISIBLE)
