extends Control

@onready var credits_ui: Control = $"Credits UI/Credits UI"

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

func _on_start_button_mouse_entered() -> void:
	$Hover_Button.play()
	

func _on_option_button_mouse_entered() -> void:
	$Hover_Button.play()

func _on_close_credits_pressed() -> void:
	$Button_Pressed_Sound.play()
	credits_ui.hide()
