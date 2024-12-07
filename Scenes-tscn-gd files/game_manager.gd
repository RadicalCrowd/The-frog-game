extends Node

@onready var points_label = %PointsLabel
@export var hearts : Array[Node]

var points = 0 
var  lives = 3


func decreases_health():
	lives -= 1
	print(lives)
	for h in 3:
		if (h < lives):
			hearts [h].show()
		else:
			hearts [h].hide()
	if (lives == 0):
		$"../Game_over_audio".play()
		await get_tree().create_timer(1.5).timeout
		get_tree().reload_current_scene()

#give point to the player (in colectable script)
func add_point():
	points += 1
	print(points)
	points_label.text ="Points: " + str(points)
