extends RigidBody2D

func _on_Target_body_entered(body):
	if (body.get_name()) == "Projectile":
		gravity_scale = 1
		print("Hit!")
