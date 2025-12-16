extends State

func enter_state() -> void:
	pass
	

func process(delta: float) -> void:
	if Input.is_action_pressed("move_left") || Input.is_action_pressed("move_right"):
		state_machine.change_state_by_name("Moving",stateholder)

func physics_process(delta: float) -> void:
	var body = stateholder as CharacterBody2D
	
	if not body.is_on_floor():
		state_machine.change_state_by_name("Moving",stateholder)

	
