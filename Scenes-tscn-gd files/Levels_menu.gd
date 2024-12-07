extends Node

#level Menu 1
#back button to main menu
func _on_back_button_pressed():
	get_tree().change_scene_to_file("res://Scenes-tscn-gd files/main_menu.tscn")


#clicking sound start here 
func _on_level_1_mouse_entered() -> void:
	$Click_audio.play()

func _on_level_2_mouse_entered() -> void:
	$Click_audio.play()

func _on_level_3_mouse_entered() -> void:
	$Click_audio.play()

func _on_level_4_mouse_entered() -> void:
	$Click_audio.play()

func _on_level_5_mouse_entered() -> void:
	$Click_audio.play()

func _on_level_6_mouse_entered() -> void:
	$Click_audio.play()

func _on_back_button_mouse_entered() -> void:
	$Click_audio.play()
#clicking sound end here

#fps counter
func _process(_delta): 
	$HBoxContainer/Fps_counter.text = str(Engine.get_frames_per_second())

#button 1 = tutorial level
func _on_tutorial_pressed() -> void:
	get_tree().change_scene_to_file("res://Scenes-tscn-gd files/tutorial_level.tscn")

#button 2 = level 1
func _on_level_1_pressed() -> void:
	get_tree().change_scene_to_file("res://Scenes-tscn-gd files/Level1.tscn")

#button 3 = level 2
func _on_level_2_pressed() -> void:
	get_tree().change_scene_to_file("res://Scenes-tscn-gd files/Level2.tscn")

#button 4 = level 3
func _on_level_3_pressed() -> void:
	get_tree().change_scene_to_file("res://Scenes-tscn-gd files/Level3.tscn")
#button 5 = level 4
func _on_level_4_pressed() -> void:
	get_tree().change_scene_to_file("res://Scenes-tscn-gd files/Level4.tscn")

#button 6 = level 5
func _on_level_5_pressed() -> void:
	get_tree().change_scene_to_file("res://Scenes-tscn-gd files/Level5.tscn")

#button More = Level_menu2
func _on_button_pressed() -> void:
	get_tree().change_scene_to_file("res://Scenes-tscn-gd files/Levels_menu2 .tscn")
