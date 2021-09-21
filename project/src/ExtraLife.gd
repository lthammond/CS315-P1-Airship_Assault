extends Area2D

signal extra_life_obtained()

func _on_ExtraLife_body_entered(_body):
	emit_signal("extra_life_obtained")
