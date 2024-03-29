extends RigidBody2D

signal angle_changed(new_angle)
signal strength_changed(new_strength)
signal movement_stopped()

export var angle = 0
var degrees_per_second := 30
var strength = 45
var strength_per_second := 30
var launched := false


func _process(delta):
	angle = clamp(angle, -90, 0)
	if Input.is_action_pressed("increase_angle"):
		angle -= degrees_per_second * delta
		emit_signal("angle_changed", angle)
	if Input.is_action_pressed("decrease_angle"):
		angle += degrees_per_second * delta
		emit_signal("angle_changed", angle)

	strength = clamp(strength, 20, 100)
	if Input.is_action_pressed("increase_strength"):
		strength += strength_per_second * delta
		emit_signal("strength_changed", strength)
	if Input.is_action_pressed("decrease_strength"):
		strength -= strength_per_second * delta
		emit_signal("strength_changed", strength)

	if Input.is_action_just_pressed("launch") and launched == false:
		var impulse = Vector2.RIGHT.rotated(deg2rad(angle)) * (strength * 4)
		apply_impulse(Vector2.ZERO, impulse)
		$JumpSound.play()
		$ArrowIndicator.hide()
		launched = true
		
	if launched == true:
		check_projectile_movement()
	
	change_sprite()


func change_sprite():
	if linear_velocity >= Vector2(0.1,0.1):
		$Sprite.texture = load("res://assets/Frog2.png")
	else:
		$Sprite.texture = load("res://assets/Frog1.png")


func check_projectile_movement():
		if linear_velocity <= Vector2(0.1,0.1):
			emit_signal("movement_stopped")
