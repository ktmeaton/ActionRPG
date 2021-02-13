# Always extend the node you're passing the script to
extends KinematicBody2D

# Called when the node enters the scene tree for the first time.
# Callback functions start with _
#func _ready():
#	pass

# Vector2 is an x and y position
var velocity = Vector2.ZERO

# Called every frame. 'delta' is the elapsed time since the previous frame.
# delta is how long the last frame took
# _physics_process is a function we're overriding
func _physics_process(delta):
	var input_vector = Vector2.ZERO
	
	input_vector.x = Input.get_action_strength("ui_right") - Input.get_action_strength("ui_left")
	input_vector.y = Input.get_action_strength("ui_down") - Input.get_action_strength("ui_up")
	
	if input_vector != Vector2.ZERO:
		velocity = input_vector
	else:
		velocity = Vector2.ZERO
		
	move_and_collide(velocity)
