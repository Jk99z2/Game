extends VideoPlayer


func _on_VideoPlayer_finished():
		get_tree().change_scene("res://Escenas/Nivel1.tscn")
