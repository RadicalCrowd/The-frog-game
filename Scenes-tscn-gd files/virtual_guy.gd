extends Area2D

var active = false

func _ready():
	connect("body_entered", self, )
