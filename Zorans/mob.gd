extends CharacterBody2D

@onready var player: Player = $"../Desdemona2D"


func _physics_process(delta: float) -> void:
	var direction = global_position.direction_to(player.global_position)
	velocity = direction * 35
	move_and_slide()
