extends Area2D
var enter=false

func _on_body_entered(_body: PhysicsBody2D):
	enter=true


func _on_body_exited(_body: Node2D) :
	enter=false
func _process(_delta):
	if enter==true:
		if Input.is_action_just_pressed("ui_accept"):
			get_tree().change_scene_to_file("res://forest.tscn")
