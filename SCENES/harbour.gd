extends Node2D

@onready var leave_area: Label = $"Exit2/Leave Area"


func _ready():
	DialogueManager.dialogue_ended.connect(_on_dialogue_ended)
	$"Exit2/Leave Area".hide()

func _on_exit_body_entered(_body: PhysicsBody2D) -> void:
	$"Exit2/Leave Area".show()

func _on_dialogue_ended(_resource: DialogueResource) -> void:
	if State.harbour_exit == true:
		get_tree().change_scene_to_file("res://Day 1 Scenes fixed/Day1 part5.tscn")
