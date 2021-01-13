extends Node

func _ready():
	gamehandler.update_puntos()
	gamehandler.update_time()
	Input.set_mouse_mode(Input.MOUSE_MODE_HIDDEN)
	
func _physics_process(delta):
	if Input.is_action_just_pressed("Escape"):
		if get_tree().paused == true:
			get_tree().paused = false
			get_node("Timer").paused = false
			Input.set_mouse_mode(Input.MOUSE_MODE_HIDDEN)
			get_node("Reanudar").visible = false
			get_node("Reanudar2").visible = false
			get_node("Reanudar3").visible = false
		else:
			get_tree().paused = true
			get_node("Timer").paused = true
			Input.set_mouse_mode(Input.MOUSE_MODE_VISIBLE)
			get_node("Reanudar").visible = true
			get_node("Reanudar2").visible = true
			get_node("Reanudar3").visible = true



func _on_Timer_timeout():
	if(gamehandler.tiempo == 120):
		get_node("AudioStreamPlayer").play()
	if(gamehandler.tiempo == 30):
		get_node("AudioStreamPlayer").queue_free()
		get_node("Fast").play()
	if(gamehandler.tiempo > 0):
		gamehandler.tiempo -= 1
		gamehandler.update_time()
	if(gamehandler.tiempo == 0):
		get_tree().change_scene("res://OverEsp.tscn")


func _on_Reanudar_pressed():
			get_tree().paused = false
			get_node("Timer").paused = false
			Input.set_mouse_mode(Input.MOUSE_MODE_HIDDEN)
			get_node("Reanudar").visible = false
			get_node("Reanudar2").visible = false
			get_node("Reanudar3").visible = false

