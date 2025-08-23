extends Node2D

func _ready():
	DialogueManager.show_example_dialogue_balloon(load("res://Dialogue/Forest.dialogue"), "start")
	DialogueManager.dialogue_ended.connect(_on_dialogue_ended)

func _on_dialogue_ended(_resource: DialogueResource) -> void:
	print("dialogue ended")
	if ZorenDeadCount.z_deadcount == 5:
		get_tree().change_scene_to_file("res://SCENES/ruins.tscn")
