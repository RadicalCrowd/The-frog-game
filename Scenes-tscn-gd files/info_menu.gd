extends Control



#back button to main menu
func _on_back_button_pressed() -> void:
	get_tree().change_scene_to_file("res://Scenes-tscn-gd files/main_menu.tscn")
#Fps counter
func _process(_delta): 
	$HBoxContainer/Fps_counter.text = str(Engine.get_frames_per_second())
