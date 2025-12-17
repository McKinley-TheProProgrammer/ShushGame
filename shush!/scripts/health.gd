class_name Health extends Node

signal on_health_recovered(hp: float, amount: float)
signal on_health_depleted(hp: float, amount : float)
signal on_death

@export var hp_max : float

var current_hp : float
var is_dead : bool

func _ready() -> void:
	current_hp = hp_max

func recover(amount : float) -> void:
	current_hp = min(current_hp + amount, hp_max)
	on_health_recovered.emit(current_hp,amount)
	

func deplete(amount : float) -> void:
	current_hp = max(current_hp - amount, 0)
	on_health_depleted.emit(current_hp, amount)
	if current_hp <= 0:
		is_dead = true
		on_death.emit()
