extends Control

@onready var credits_ui: Control = $"Credits UI/Credits UI"
@onready var pg_1: Control = $"Credits UI/Credits UI/Pg1"
@onready var pg_2: Control = $"Credits UI/Credits UI/Pg2"
@onready var start_button: Button = $VBoxContainer/StartButton
@onready var option_button: Button = $VBoxContainer/OptionButton

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	credits_ui.hide()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_start_button_pressed() -> void:
	$Button_Pressed_Sound.play()
	get_tree().change_scene_to_file("res://backstorynarration.tscn")


func _on_option_button_pressed() -> void:
	$Button_Pressed_Sound.play()
	credits_ui.show()
	pg_2.hide()
	option_button.hide()
	start_button.hide()


func _on_start_button_mouse_entered() -> void:
	$Hover_Button.play()
	

func _on_option_button_mouse_entered() -> void:
	$Hover_Button.play()


func _on_close_credits_pressed() -> void:
	$Button_Pressed_Sound.play()
	credits_ui.hide()
	option_button.show()
	start_button.show()


func _on_to_pg_2_pressed() -> void:
	$Swipe_Page.play()
	pg_1.hide()
	pg_2.show()


func _on_to_pg_1_pressed() -> void:
	$Swipe_Page.play()
	pg_2.hide()
	pg_1.show()
