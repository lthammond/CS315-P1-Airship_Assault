extends Node2D

var projectile
var target
var lives = 3

func _ready():
	create_projectile()
	create_target()

func _on_Projectile_angle_changed(new_angle):
	$AngleLabel.text = 'Angle:%d' % -new_angle

func _on_Projectile_strength_changed(new_strength):
	$StrengthLabel.text = 'Strength:%d' % new_strength
	
func create_projectile():
	projectile = load("res://src/Projectile.tscn").instance()
	projectile.position = Vector2(80, 550)
	call_deferred("add_child", projectile)
	projectile.connect("angle_changed", self, "_on_Projectile_angle_changed")
	projectile.connect("strength_changed", self, "_on_Projectile_strength_changed")
	projectile.connect("sleeping", self, "check_Projectile_is_sleeping")

func create_target():
	target = load("res://src/AirshipTarget.tscn").instance()
	target.position = Vector2(300, 300)
	call_deferred("add_child", target)
	
	
func _on_Killbox_body_entered(_body):
	projectile.free()
	lives -= 1
	if lives >= 0:
		$LifeLabel.text = 'x%d' % lives
		create_projectile()

func check_Projectile_is_sleeping():
	if projectile.linear_velocity == Vector2(0,0):
		print("sleep")
