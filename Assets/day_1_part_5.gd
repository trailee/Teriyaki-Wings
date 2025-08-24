extends Node2D

@onready var leave_area: Label = $"Exit/Leave Area"

func _ready():
	DialogueManager.dialogue_ended.connect(_on_dialogue_ended)
	$"Exit/Leave Area".hide()

func _on_exit_body_entered(_body: PhysicsBody2D) -> void:
	$"Exit/Leave Area".show()

func _on_dialogue_ended(_resource: DialogueResource) -> void:
	print("scene change")
	if State.d1p5_exit == true:
		get_tree().change_scene_to_file("res://Assets/night_1_des talking with her friends deck.tscn")
		print("not wokring")
