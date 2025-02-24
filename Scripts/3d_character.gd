extends CharacterBody2D

@onready var animated_sprite_2d: AnimatedSprite2D = $AnimatedSprite2D

const SPEED = 130.0
const JUMP_VELOCITY = -300.0
var direction = Input.get_axis("move_left", "move_right")

func _physics_process(delta: float) -> void:
	# Reset velocity
	velocity = Vector2.ZERO  


	#Animations
	# Get input for movement
	if Input.is_action_pressed("ui_right"):
		animated_sprite_2d.flip_h = false
		velocity.x += 1.0
		animated_sprite_2d.play("run")

		
	if Input.is_action_pressed("ui_left"):
		velocity.x -= 1.0
		animated_sprite_2d.flip_h = true
		animated_sprite_2d.play("run")

		
	if Input.is_action_pressed("ui_down"):
		animated_sprite_2d.flip_h = false
		velocity.y += 1.0
		animated_sprite_2d.play("down")

		
	if Input.is_action_pressed("ui_up"):
		animated_sprite_2d.flip_h = false
		velocity.y -= 1.0
		animated_sprite_2d.play("up")


	# Normalize and apply speed
	if velocity != Vector2.ZERO:
		velocity = velocity.normalized() * SPEED


	# Move the character using the built-in velocity
	move_and_slide()
