extends State

@export var speed : float = 10.0
@export var jump_force : float = -10.0

func physics_process(delta: float) -> void:
	var body = stateholder as CharacterBody2D
	if not body.is_on_floor():
		body.velocity.y += body.get_gravity().y * delta

		# Handle jump.
	if Input.is_action_just_pressed("jump") and body.is_on_floor():
		body.velocity.y = jump_force

	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var direction := Input.get_axis("move_left", "move_right")
	if direction:
		body.velocity.x = direction * speed
	else:
		body.velocity.x = move_toward(body.velocity.x, 0, speed)
		state_machine.change_state_by_name("Idle",stateholder)

	# HANDLE Flipping
	if direction > 0:
		body.scale.x = 1
	elif direction < 0:
		body.scale.x = -1
	print(direction)
	body.move_and_slide()

	
