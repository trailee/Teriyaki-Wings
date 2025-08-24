extends Node2D

@onready var main_exit: Area2D = $Exit
@onready var leave_area: Label = $"Exit/Leave Area"
@onready var player: Player = $Background/Desdemona2D
@onready var aid_kit: Sprite2D = $"Background/Eat Table/First Aid Kit"


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$"Exit/Leave Area".hide()
	DialogueManager.show_example_dialogue_balloon(load("res://Dialogue/instructions.dialogue"), "start")
	DialogueManager.show_example_dialogue_balloon(load("res://Day 1 Scenes fixed/Day1 part1.dialogue"), "start")
	DialogueManager.dialogue_ended.connect(_on_dialogue_ended)

func _on_exit_body_entered(_body: PhysicsBody2D) -> void:
	$"Exit/Leave Area".show()

func _on_exit_body_exited(_body: PhysicsBody2D) -> void:
	$"Exit/Leave Area".hide()

func _on_dialogue_ended(_resource: DialogueResource) -> void:
	if State.first_aid_pressed == true:
		aid_kit.hide()
	if State.treehouse_exit == true:
		get_tree().change_scene_to_file("res://SCENES/WORKING_FOREST.tscn")
