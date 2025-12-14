class_name StateMachine extends Node

@export var initial_state : State
@export var states : Dictionary[String,State]

var current_state : State

func _ready() -> void:
	owner = get_parent()
	
	for state in states.values():
		if state is State:
			state.stateholder = owner
			state.state_machine = self
			state.state_name = state.name

## Changes the State and passes the reference to the Object that is using it
func change_state(state_to : State, node_obj) -> void:
	if states.has(state_to.name):
		push_warning("State '%s' doesn't exist." % state_to.name)
		return
	
	if current_state:
		current_state.exit_state()
		current_state.on_state_exited.emit(node_obj)
		
		
	current_state = state_to
	current_state.enter_state()
	current_state.on_state_entered.emit(node_obj)

func _process(delta: float) -> void:
	if current_state:
		current_state.process(delta)
		
func _physics_process(delta: float) -> void:
	if current_state:
		current_state.physics_process(delta)
	
