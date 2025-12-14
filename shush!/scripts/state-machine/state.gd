class_name State extends Node

@export var enter_timeline : AnimationPlayer
@export var exit_timeline : AnimationPlayer

## The Owner of this state
var stateholder
var state_name
var state_machine

signal on_state_entered(stateType)
signal on_state_exited(stateType)

func enter_state() -> void:
	pass
	
func exit_state() -> void:
	pass


func process(delta: float) -> void:
	pass
	
func physics_process(delta: float) -> void:
	pass
