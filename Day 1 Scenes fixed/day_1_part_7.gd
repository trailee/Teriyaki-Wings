extends Node2D

func _ready():
	DialogueManager.dialogue_ended.connect(_on_dialogue_ended)

func _on_dialogue_ended(_resource: DialogueResource) -> void:
	if State.des_int_people == true:
		get_tree().change_scene_to_file("res://Day 1 Scenes fixed/Day1 part 8.tscn")
		print("not wokring")
