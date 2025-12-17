class_name Hitbox extends Node

signal on_hit_taken(attack : AttackResource)

func hit(attack : AttackResource) -> void:
	on_hit_taken.emit(attack)

func take_damage(damage: float) -> void:
	on_hit_taken.emit(damage)
