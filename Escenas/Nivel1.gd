extends Node

func _ready():
	gamehandler.update_puntos()
	
func _on_Timer_timeout():
	if(gamehandler.tiempo == 120):
		get_node("AudioStreamPlayer").play()
	elif(gamehandler.tiempo == 40):
		get_node("AudioStreamPlayer").queue_free()
		get_node("Fast").play()
	elif(gamehandler.tiempo == 0):
		get_tree().paused = true

	if(gamehandler.tiempo > 0):
		gamehandler.tiempo -= 1
		gamehandler.update_time()



func _on_AudioStreamPlayer_finished():
	pass
