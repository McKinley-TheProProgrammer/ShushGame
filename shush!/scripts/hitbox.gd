class_name Hitbox extends Node

signal on_hit_taken(attack : AttackResource)

func hit(attack : AttackResource) -> void:
	on_hit_taken.emit(attack)
