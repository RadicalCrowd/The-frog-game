extends RigidBody2D

@onready var game_manager = %GameManager

func _on_area_2d_body_entered(body: Node2D) -> void:
	if (body.name == "CharacterBody2D"):
		var y_delta = position.y - body.position.y
		var _x_delta = position.x - body.position.x
		if (y_delta > 30):
			print("enemy destroy ")
			queue_free()
			body.jump()
		else :
			print("decresses player health")
			game_manager.decreases_health()
			if (_x_delta > 0):
				body.jump_slide(500)
			else:
				body.jump_slide(-500)
