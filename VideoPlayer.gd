extends VideoPlayer

func _physics_process(delta):
	if Input.is_action_pressed("ui_accept"):
		get_tree().change_scene("res://Escenas/LoadingScreen.tscn")

func _on_VideoPlayer_finished():
	
	get_tree().change_scene("res://Escenas/MenuEs.tscn")
