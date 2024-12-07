extends Control


#resolution Control
func _on_option_button_item_selected(index):
	match index:
		0:
			get_window().set_size(Vector2(1600,900))
		1:
			get_window().set_size(Vector2(1920, 1080))
		2:
			get_window().set_size(Vector2(1280,720))
		3:
			get_window().set_size(Vector2(1366,768))
		4:
			get_window().set_size(Vector2(1152,648))
		5:
			get_window().set_size(Vector2(1920,1200))


func _on_back_button_pressed() -> void:
	get_tree().change_scene_to_file("res://Scenes-tscn-gd files/main_menu.tscn")
