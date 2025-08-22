extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	if SceneManager.player:
		add_child(SceneManager.player)
