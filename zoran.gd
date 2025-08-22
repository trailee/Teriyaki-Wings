extends Node2D

func walk_front():
	$Anchor/AnimatedSprite2D.play("front_walk")

func walk_left():
	$Anchor/AnimatedSprite2D.play("left_walk")
	
func walk_right():
	$Anchor/AnimatedSprite2D.play("right_walk")

func walk_back():
	$Anchor/AnimatedSprite2D.play("back_walk")

func dead():
	$Anchor/AnimatedSprite2D.play("zoran_dead")
