class_name Player extends CharacterBody2D

@onready var state_machine: StateMachine = $StateMachine
@onready var animation_player: AnimationPlayer = $AnimationPlayer

func _process(delta: float) -> void:
	if Input.is_action_just_pressed("shush_attack"):
		state_machine.change_state_by_name("ShushAttack", self)
	elif Input.is_action_just_released("shush_attack"):
		state_machine.change_state_by_name("Idle", self)
