extends Node
#level Menu number 2

#button 1 = level 6
func _on_level_6_pressed() -> void:
	get_tree().change_scene_to_file("res://Scenes-tscn-gd files/Level6.tscn")

#back button to Level_menu1
func _on_back_button_pressed() -> void:
	get_tree().change_scene_to_file("res://Scenes-tscn-gd files/Levels_menu.tscn")
