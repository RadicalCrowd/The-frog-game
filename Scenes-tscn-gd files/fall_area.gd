extends Area2D

# when CharacterBody2D entered Node2D = Reload current scene
func _on_body_entered(body: Node2D) -> void:
	if (body.name == "CharacterBody2D") :
		get_tree().reload_current_scene()
