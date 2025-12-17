extends State

@export var attack_resource : AttackResource
@export var attack_box : CollisionObject2D

var player : Player

func enter_state() -> void:
	player = stateholder as Player
	
	player.animation_player.play(attack_resource.animation_name)

func exit_state() -> void:
	print("Exit Shushhing")

func shush_attack() -> void:
	print("SHUSH!!!")
	
	
	
