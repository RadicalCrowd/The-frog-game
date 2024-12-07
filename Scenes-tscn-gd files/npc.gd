extends Area2D  # Use Area2D instead of Sprite2D if you want body_entered signal

var active = false

func _ready():
	# Connect the body_entered and body_exited signals to methods in this script
	self.connect("body_entered", Callable(self, "_on_NPC_body_entered"))
	self.connect("body_exited", Callable(self, "_on_NPC_body_exited"))


func _process(_delta):
	$QuestionMark.visible = active



func unpause(timeline_name):
	get_tree().paused = false


func _on_NPC_body_entered(body):
	if body.name == "CharacterBody2D":
		active = true


func _on_NPC_body_exited(body):
	if body.name == "CharacterBody2D":
		active = false
