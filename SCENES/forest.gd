extends Node2D

func _ready():
	DialogueManager.show_example_dialogue_balloon(load("res://Dialogue/Forest.dialogue"), "start")

func _on_dialogue_ended(_resource: DialogueResource) -> void:
	if ZorenDeadCount.z_deadcount == 5:
		get_tree().change_scene_to_file("res://SCENES/ruins.tscn")
