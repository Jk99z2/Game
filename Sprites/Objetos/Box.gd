extends Area2D


func _ready():
	pass


func _on_Box_body_entered(body):
		if(body.is_in_group("player")):
			queue_free()
			gamehandler.puntos += 1
			gamehandler.update_puntos()
