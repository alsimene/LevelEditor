extends CharacterBody2D


var SPEED = 200.0
const JUMP_VELOCITY = -400.0
var facing_right = false
# Get the gravity from the project settings to be synced with RigidBody nodes.
var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")

func _ready():
	$AnimationPlayer.play("walk")
	get_node("Sprite2D").flip_h = true

func _physics_process(delta):
	# Add the gravity.
	if not is_on_floor():
		velocity.y += gravity * delta
	if not $EdgeDetector.is_colliding() and not is_on_floor():
		flip()
		scale.x = abs(scale.x) * -1
		SPEED = SPEED * -1
	if $CollisionDetector.is_colliding():
		flip()
		scale.x = abs(scale.x) * -1
		SPEED = SPEED * 1
	velocity.x = SPEED
	move_and_slide()

func flip():
	facing_right = !facing_right
	scale.x = abs(scale.x) * -1
	if !facing_right:
		SPEED = abs(SPEED) * -1
		
	else:
		SPEED = abs(SPEED) 
		
