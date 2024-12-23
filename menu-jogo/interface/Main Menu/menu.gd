extends Control
class_name MainMenu

func _ready() -> void:
	for _button in get_tree().get_nodes_in_group("Buttons"):
		_button.pressed.connect(_on_button_pressed.bind(_button))
		
func _on_button_pressed(button: button) -> void:
	match _button.name
		"Play":
			get_tree().change_scene_to_file("res://level.tscn")
			
		"Options":
			get_tree().change_scene_to_file("res://options.tscn")
			
		"quit":
			get_tree().quit()
