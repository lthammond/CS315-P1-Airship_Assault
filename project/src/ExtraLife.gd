extends Area2D

signal extra_life_obtained()


func _on_ExtraLife_body_entered(body):
	emit_signal("extra_life_obtained")
