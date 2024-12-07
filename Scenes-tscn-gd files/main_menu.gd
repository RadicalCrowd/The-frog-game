extends Node

#go to Level_menu1
func _on_play_button_pressed():
	get_tree().change_scene_to_file("res://Scenes-tscn-gd files/Levels_menu.tscn")

# when mouse entered not click = play audio 
#start here
func _on_play_button_mouse_entered() -> void:
	$Click_audio.play()

func _on_button_pressed():
	get_tree().change_scene_to_file("res://Scenes-tscn-gd files/Info_menu.tscn")
	
func _on_info_mouse_entered() -> void:
	$Click_audio.play()

func _on_setting_pressed() -> void:
	get_tree().change_scene_to_file("res://Scenes-tscn-gd files/Setting_menu.tscn")


func _on_setting_mouse_entered() -> void:
	$Click_audio.play()
#end here

#Fps counter
func _process(_delta): 
	$HBoxContainer/Fps_counter.text = str(Engine.get_frames_per_second())

#quit button/close the game
func _on_quiiot_pressed() -> void:
	get_tree().quit()
