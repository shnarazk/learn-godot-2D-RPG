extends Node2D

const GrassEffect = preload("res://Effects/grass_effect.tscn")

func create_grass_effect() -> void:
		var grassEffect = GrassEffect.instantiate()
		get_parent().add_child(grassEffect)
		grassEffect.global_position = global_position
		# queue_free()

func _on_hurtbox_area_entered(_area) -> void:
	create_grass_effect()
	queue_free()
