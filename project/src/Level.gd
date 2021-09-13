extends Node2D

var projectile

func _ready():
	create_projectile()

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


func _on_Killbox_body_entered(_body):
	print("Kill")
