extends State

@export var damage : int = 1
@export var raycast : RayCast2D

var player : Player
func enter_state() -> void:
	shush_attack()

func exit_state() -> void:
	print("Exit Shushhing")

func shush_attack() -> void:
	player = stateholder as Player
	
	player.animation_player.play("player_walrus/shush_attack")
	
