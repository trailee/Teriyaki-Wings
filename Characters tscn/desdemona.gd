extends CharacterBody2D

@onready var animated_sprite: AnimatedSprite2D = $AnimatedSprite2D

const SPEED = 75.0

func _physics_process(delta: float) -> void:
	var direction = Input.get_vector("ui_left","ui_right","ui_up","ui_down")
	velocity = direction * SPEED
	move_and_slide()
	
	if Input.is_action_pressed("ui_left"):
		animated_sprite.play("Des_WalkLeft")
	elif Input.is_action_pressed("ui_right"):
		animated_sprite.play("Des_WalkRight")
	elif Input.is_action_pressed("ui_up"):
		animated_sprite.play("Des_WalkBack")
	elif Input.is_action_pressed("ui_down"):
		animated_sprite.play("Des_WalkFront")
	else: 
		animated_sprite.play("Des_Idle")
