extends CharacterBody2D

@onready var animated_sprite: AnimatedSprite2D = $AnimatedSprite2D
@onready var animation_player: AnimationPlayer = $AnimationPlayer
@onready var actionable_finder: Area2D = $Direction/ActionableFinder

const SPEED = 75.0

func _unhandled_input(_event: InputEvent) -> void:
	if Input.is_action_pressed("ui_accept"):
		var actionables = actionable_finder.get_overlapping_areas()
		if actionables.size() > 0:
			actionables[0].action()
		return

func _physics_process(_delta: float) -> void:
	var direction = Input.get_vector("ui_left","ui_right","ui_up","ui_down")
	velocity = direction * SPEED
	move_and_slide()
	
	if Input.is_action_pressed("ui_left"):
		animated_sprite.play("Des_WalkLeft")
		animation_player.play("Left")
	elif Input.is_action_pressed("ui_right"):
		animated_sprite.play("Des_WalkRight")
		animation_player.play("Right")
	elif Input.is_action_pressed("ui_up"):
		animated_sprite.play("Des_WalkBack")
		animation_player.play("Back")
	elif Input.is_action_pressed("ui_down"):
		animated_sprite.play("Des_WalkFront")
		animation_player.play("Front")
	else: 
		animated_sprite.play("Des_Idle")
