extends Area2D

signal extra_life_obtained()

func _on_ExtraLife_body_entered(_body):
	$PickupSound.play()
	yield(get_tree().create_timer(.3), "timeout")
	emit_signal("extra_life_obtained")
