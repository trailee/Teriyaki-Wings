extends CharacterBody2D

@export var speed=200
func get_input():
	var direction=Input.get_vector("left","right","up","down")
	velocity= direction * speed

func _physics_process(delta):
	get_input()
	move_and_slide()
