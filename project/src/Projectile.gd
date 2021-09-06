extends RigidBody2D

export var angle = 0
export var degrees_per_second = 20
var strength = 25
export var strength_per_second = 20

func _draw():
	draw_circle(Vector2.ZERO, $CollisionShape2D.shape.radius, Color.white)
	
func _process(delta):
	if Input.is_action_just_pressed("launch"):
		var impulse = Vector2.RIGHT.rotated(deg2rad(angle)) * (strength * 4)
		apply_impulse(Vector2.ZERO, impulse)
	if Input.is_action_pressed("increase_angle"):
		angle -= degrees_per_second * delta
		print(angle)
	if Input.is_action_pressed("decrease_angle"):
		angle += degrees_per_second * delta
		print(angle)
	if Input.is_action_pressed("increase_strength"):
		strength += strength_per_second * delta
		print(strength)
	if Input.is_action_pressed("decrease_strength"):
		strength -= strength_per_second * delta
		print(strength)
		
