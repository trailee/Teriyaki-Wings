extends Node

var spawn_door: String = ""

signal spawn_player(position: Vector2, direction: String)

func go_to_level(level_name: String, door_name: String) -> void:
	spawn_door = door_name
