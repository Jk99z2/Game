extends KinematicBody2D

var speed = 200 #Variable speed añadida, pixeles por segundo
var velocity = Vector2 (0, 0) #Velocidad lineal y vertical
var gravity = 750 #Variable de gravedad
var jump = -500 #Variable de salto con NEGATIVO porque el eje  Y superior se indica en negativo, y en positivo para invertirlo

onready var sprite = $Sprite
onready var animation = $AnimationPlayer

func _ready():
	OS.center_window()

func _physics_process(delta): #Siempre que se trabajen con físicas se usa ésta función
	velocity.y += gravity * delta #Gravedad activa
	velocity.x = 0
	var friction = false
	
	if Input.is_action_pressed("ui_right"): #Funcion para moverse a la derecha
		velocity.x += speed
		sprite.flip_h = false
		animation.play("Walk")
	elif Input.is_action_pressed("ui_left"): #Funcion para moverse a la izquierda
		velocity.x -= speed
		sprite.flip_h = true
		animation.play("Walk")
	else:
		animation.play("Idle")
		friction = true
	
	if is_on_floor() and Input.is_action_pressed("ui_up"):
		velocity.y = jump #Funcion de salto
		if friction == true:
			velocity.x = lerp(velocity.x, 0, 0.5)
		else:
			if friction == true:
				velocity.x = lerp(velocity.x, 0, 0.01)
			
	velocity = move_and_slide(velocity, Vector2.UP) #Funcion que habilita moverse por los ejes con la variable de velocidad acumulada
