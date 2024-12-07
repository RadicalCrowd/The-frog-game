extends CharacterBody2D

const SPEED = 400.0
const JUMP_VELOCITY = -900.0
@onready var sprite_2d = $Sprite2D
@export var Particle : PackedScene


# Get the gravity from the project settings to be synced with RigidBody nodes.
var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")
var jump_count = 0

func jump():
	velocity.y = JUMP_VELOCITY
	spawn_partical()
func jump_slide(x):
	velocity.y = JUMP_VELOCITY
	velocity.x = x

func _physics_process(delta):
	
	
	# Add the gravity.
	if is_on_floor():
		jump_count = 0
		
		
		if (velocity.x > 1 || velocity.x < -1 ):
			sprite_2d.animation = "Running"
		else:
			sprite_2d.animation = "Idle"
	
	else:
		velocity.y += gravity * delta
		
		if (jump_count == 2):
			sprite_2d.animation = "Double_jumping"
		else:
			sprite_2d.animation = "Jumping"



	# Handle jump.
	if Input.is_action_just_pressed("space") and jump_count < 2:  
		velocity.y = JUMP_VELOCITY
		jump_count += 1
		if (jump_count == 2):
			$Jump2x_audio.play()
			spawn_partical()

	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var direction = Input.get_axis("left", "right")
	if direction:
		velocity.x = direction * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)

	move_and_slide()
	
	var isleft = velocity.x < 0
	sprite_2d.flip_h = isleft


#particle
func spawn_partical():
	var particle_node = Particle.instantiate()
	particle_node.position = position
	get_parent().add_child(particle_node)
	await get_tree().create_timer(0.3).timeout
	particle_node.queue_free()
