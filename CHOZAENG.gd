extends Area2D


func _ready():
	pass


func _on_Area2D11_body_entered(body):
	if(body.is_in_group("player")):
		get_tree().change_scene("res://Creditos/CreditEng.tscn")
