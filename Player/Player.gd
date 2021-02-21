# Always extend the node you're passing the script to
extends KinematicBody2D

const MAX_SPEED = 80
const ACCELERATION = 500
const FRICTION = 600

enum {
	MOVE,
	ROLL,
	ATTACK
}
var state = MOVE
var velocity = Vector2.ZERO

onready var animationPlayer = $AnimationPlayer
onready var animationTree = $AnimationTree
onready var animationState = animationTree.get("parameters/playback")

func _ready():
	animationTree.active = true

# Called every frame. 'delta' is the elapsed time since the previous frame.
# delta is how long the last frame took
# _physics_process is a function we're overriding
func _physics_process(delta):
	match state:
		MOVE:
			move_state(delta)
		ROLL:
			pass
		ATTACK:
			attack_state(delta)
	
	if Input.is_action_just_pressed("attack"):
		state = ATTACK
				
func move_state(delta):
	var input_vector = Vector2.ZERO
		
	input_vector.x = Input.get_action_strength("ui_right") - Input.get_action_strength("ui_left")
	input_vector.y = Input.get_action_strength("ui_down") - Input.get_action_strength("ui_up")
	input_vector = input_vector.normalized()
	
	if input_vector != Vector2.ZERO:
		animationTree.set("parameters/Idle/blend_position", input_vector)
		animationTree.set("parameters/Run/blend_position", input_vector)
		animationTree.set("parameters/Attack/blend_position", input_vector)
		animationState.travel("Run")
		velocity = velocity.move_toward(input_vector * MAX_SPEED, ACCELERATION * delta)
	else:
		animationState.travel("Idle")
		velocity = velocity.move_toward(Vector2.ZERO, FRICTION * delta)
	
	velocity = move_and_slide(velocity)

func attack_state(delta):
	animationState.travel("Attack")
	velocity = Vector2.ZERO

func attack_animation_finished():
	state = MOVE
