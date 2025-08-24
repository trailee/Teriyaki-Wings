extends Node2D

func _ready():
	if SceneManager.spawn_door != "":
		_spawn_player_at_door(SceneManager.spawn_door)

func _spawn_player_at_door(door_name: String):
	var door_path = "Doors/nscenetrigger_" + door_name
	if has_node(door_path):
		var door = get_node(door_path)
		var spawn_position = door.spawn_marker.global_position
		var direction = door.spawn_direction
		SceneManager.emit_spawn(spawn_position, direction)
