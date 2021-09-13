extends Node2D

func _ready():
	var _ignored = $Projectile.connect("angle_changed", self, "_on_Projectile_angle_changed")

func _on_Projectile_angle_changed(new_angle):
	$AngleLabel.text = 'Angle: %d' % -new_angle
