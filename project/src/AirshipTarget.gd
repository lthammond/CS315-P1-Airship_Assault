extends RigidBody2D

signal target_hit()

func _on_Target_body_entered(body):
	if body.get_name() == "Projectile":
		$TargetHitSound.play()
		gravity_scale = 1
		emit_signal("target_hit")
		contacts_reported = 0
