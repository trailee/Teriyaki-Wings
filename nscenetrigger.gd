class_name SNceneTrigger extends Area2D

@export var connected_scene: String 
var scene_folder="res://SCENES/"
func _on_body_entered(body: Node2D) :
	var full_path=scene_folder+connected_scene+".tscn"
	var scene_tree=get_tree()
	scene_tree.change_scene_to_file(full_path)
	
