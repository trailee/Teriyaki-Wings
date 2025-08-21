extends Label

var msg = ["Welcome, everyone.",
	"Two years ago, a virus broke out.",
	"They said it was lab-made, controllable.",
	"Yet people started to get infected, slowly, one by one.",
	"Fun days.",
	"Fast forward to now.",
	"Nearly everyone got infected.",
	"Only a handful managed to survive.",
	"You happened to be one of them, and so did your sister.",
	"However,",
	"Your friends died,",
	"Your family died,",
	"Your neighbors died,",
	"Your teachers died,",
	"—Basically everyone.",
	"But those days are now only memories.",
	"You have to think of the future.",
	"You must find a way to survive.",
	"For your sister— who lost everything all too young,",
	"So now, when you find dropped leaflets",
	"For a place called “The Circus and Attractions”,",
	"Claiming that a ship will be arriving",
	"Just to pick up possible survivors,",
	"How could you let the opportunity pass?",
	"Your first mission is to pack up and leave by tonight."]

var msgindex = 0

func _ready() :
	$"../../Rain_BGM".play()
	text = msg[msgindex]

func _input(event):
	if event is InputEventMouseButton and event.pressed:
		msgindex += 1
		if msgindex < msg.size():
			text = msg[msgindex]
		else:
			get_tree().change_scene_to_file("res://treehouse_scene.tscn")
