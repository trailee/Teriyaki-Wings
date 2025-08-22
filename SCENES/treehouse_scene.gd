extends Node2D
@onready var desdemona_2d: CharacterBody2D = $Background/Desdemona2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	DialogueManager.show_example_dialogue_balloon(load("res://Dialogue/instructions.dialogue"), "start")
	return


func _on_exit_body_entered(body: CharacterBody2D) -> void:
	get_tree().change_scene_to_file("res://SCENES/forest.tscn")
