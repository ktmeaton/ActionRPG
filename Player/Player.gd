# Always extend the node you're passing the script to
extends KinematicBody2D

const MAX_SPEED = 100
const ACCELERATION = 10
const FRICTION = 100

# Vector2 is an x and y position
var velocity = Vector2.ZERO

# Called every frame. 'delta' is the elapsed time since the previous frame.
# delta is how long the last frame took
# _physics_process is a function we're overriding
func _physics_process(delta):
	var input_vector = Vector2.ZERO
		
	input_vector.x = Input.get_action_strength("ui_right") - Input.get_action_strength("ui_left")
	input_vector.y = Input.get_action_strength("ui_down") - Input.get_action_strength("ui_up")
	input_vector = input_vector.normalized()
	
	if input_vector != Vector2.ZERO:
		velocity += input_vector * ACCELERATION * delta
		velocity = velocity.clamped(MAX_SPEED * delta)
	else:
		velocity = velocity.move_toward(Vector2.ZERO, FRICTION * delta)
	
	# Velocity will scale based on framerate (1/30 will move faster than 1/60)
	move_and_collide(velocity)
