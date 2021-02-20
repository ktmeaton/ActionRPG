# Always extend the node you're passing the script to
extends KinematicBody2D

const MAX_SPEED = 80
const ACCELERATION = 500
const FRICTION = 500

# Vector2 is an x and y position
var velocity = Vector2.ZERO

onready var animationPlayer = $AnimationPlayer

# Called every frame. 'delta' is the elapsed time since the previous frame.
# delta is how long the last frame took
# _physics_process is a function we're overriding
func _physics_process(delta):
	var input_vector = Vector2.ZERO
		
	input_vector.x = Input.get_action_strength("ui_right") - Input.get_action_strength("ui_left")
	input_vector.y = Input.get_action_strength("ui_down") - Input.get_action_strength("ui_up")
	input_vector = input_vector.normalized()
	
	if input_vector != Vector2.ZERO:
		if input_vector.x > 0:
			animationPlayer.play("RunRight")
		else:
			animationPlayer.play("RunLeft")
		velocity = velocity.move_toward(input_vector * MAX_SPEED, ACCELERATION * delta)
	else:
		animationPlayer.play("IdleRight")
		velocity = velocity.move_toward(Vector2.ZERO, FRICTION * delta)
	
	velocity = move_and_slide(velocity)
