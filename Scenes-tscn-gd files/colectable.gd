extends Area2D

@onready var game_manager = %GameManager

#whenever the player (characterBody2d) touched the colectable it give 1 point
func _on_body_entered(body):
	if (body.name == "CharacterBody2D"):
		$"../../../Picked_Up_Cherry_audio".play()
		queue_free()
		game_manager.add_point()
