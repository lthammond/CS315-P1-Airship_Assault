extends RigidBody2D

export var angle = 0
var degrees_per_second = 30
var strength = 45
var strength_per_second = 30

func _process(delta):
	angle = clamp(angle, -90, 0)
	if Input.is_action_pressed("increase_angle"):
		angle -= degrees_per_second * delta
	if Input.is_action_pressed("decrease_angle"):
		angle += degrees_per_second * delta

	strength = clamp(strength, 20, 100)
	if Input.is_action_pressed("increase_strength"):
		strength += strength_per_second * delta
	if Input.is_action_pressed("decrease_strength"):
		strength -= strength_per_second * delta

	if Input.is_action_just_pressed("launch"):
		var impulse = Vector2.RIGHT.rotated(deg2rad(angle)) * (strength * 4)
		apply_impulse(Vector2.ZERO, impulse)
		$JumpSound.play()
		$ArrowIndicator.hide()
		
	change_sprite()

func change_sprite():
	if linear_velocity != Vector2(0,0):
		$Sprite.texture = load("res://assets/Frog2.png")
	else:
		$Sprite.texture = load("res://assets/Frog1.png")
