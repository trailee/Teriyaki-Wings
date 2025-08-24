extends Node2D

func _ready():
	DialogueManager.dialogue_ended.connect(_on_dialogue_ended)
	$"Exit/Leave Area".hide()

func _on_exit_body_entered(_body: PhysicsBody2D) -> void:
	$"Exit/Leave Area".show()

func _on_exit_body_exited(_body: PhysicsBody2D) -> void:
	$"Exit/Leave Area".hide()

func _on_dialogue_ended(_resource: DialogueResource) -> void:
	print("dialogue ended")
	if State.ruin_exit == true:
		get_tree().change_scene_to_file("res://SCENES/Harbour.tscn")
