extends Node2D

var projectile
var target
var lives = 3
var sleep_timer
var points_per_target = 50
var total_points = 0

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
	sleep_timer = 0

func create_target():
	target = load("res://src/AirshipTarget.tscn").instance()
	target.position = Vector2(300, 300)
	call_deferred("add_child", target)
	target.connect("target_hit", self, "on_Target_hit")
	
func _on_Killbox_body_entered(_body):
	projectile.free()
	respawn_Projectile()

func check_Projectile_is_sleeping():
	sleep_timer +=1
	if sleep_timer == 100:
		spawn_Explosion(projectile.position)
		projectile.call_deferred("free")
		respawn_Projectile()
		
func respawn_Projectile():
	lives -= 1
	if lives >= 0:
		$LifeLabel.text = 'x%d' % lives
		create_projectile()
		
func on_Target_hit():
	total_points += points_per_target
	$ScoreLabel.text = 'Score:%d' % total_points
	$AirshipExplosionTimer.start()

func spawn_Explosion(position):
	var explosion = load("res://src/Explosion.tscn").instance()
	explosion.position = position
	explosion.one_shot = true
	
	add_child(explosion)
	


func _on_AirshipExplosionTimer_timeout():
	spawn_Explosion(target.position)
	target.free()
	
