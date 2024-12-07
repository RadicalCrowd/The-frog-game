extends Node

#This is a Fps counter
func _process(delta):
	$Panel/Fps_counter.text =(str(Engine.get_frames_per_second()))
