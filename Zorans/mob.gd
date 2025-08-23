extends CharacterBody2D

var health = 5

@onready var player: Player = $"../Desdemona2D2"

func _physics_process(_delta: float) -> void:
	var direction = global_position.direction_to(player.global_position)
	velocity = direction * 35
	move_and_slide()

func take_damage():
	health -=1
	$AnimationPlayer.play("Zoren_Hurt")
	if health == 0:
		ZorenDeadCount.z_deadcount += 1
		queue_free()
