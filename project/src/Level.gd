extends Node2D

func _ready():
	var _ignoredAngle = $Projectile.connect("angle_changed", self, "_on_Projectile_angle_changed")
	var _ignoreStrength = $Projectile.connect("strength_changed", self, "_on_Projectile_strength_changed")

func _on_Projectile_angle_changed(new_angle):
	$AngleLabel.text = 'Angle:%d' % -new_angle

func _on_Projectile_strength_changed(new_strength):
	$StrengthLabel.text = 'Strength:%d' % new_strength
