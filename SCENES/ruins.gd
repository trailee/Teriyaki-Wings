extends Node2D

func _ready():
	DialogueManager.dialogue_ended.connect(_on_dialogue_ended)

func _on_dialogue_ended(_resource: DialogueResource) -> void:
	print("dialogue ended")
	if State.ruin_exit == true:
		get_tree().change_scene_to_file("res://SCENES/Harbour.tscn")
