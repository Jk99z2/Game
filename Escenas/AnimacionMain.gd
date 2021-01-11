extends KinematicBody2D

onready var sprite = $Sprite
onready var animation = $AnimationPlayer

func _physics_process(delta):
	
	animation.play("Idle")
	sprite.flip_h = true
