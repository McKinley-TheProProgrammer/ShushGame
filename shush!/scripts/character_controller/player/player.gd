class_name Player extends CharacterBody2D

@onready var state_machine: StateMachine = $StateMachine
@onready var animation_player: AnimationPlayer = $AnimationPlayer

func _process(delta: float) -> void:
	if Input.is_action_pressed("move_left") || Input.is_action_pressed("move_right"):
		state_machine.change_state_by_name("Moving", self)
	elif not Input.is_action_pressed("move_left") || Input.is_action_pressed("move_right"):
		state_machine.change_state_by_name("Idle", self)
