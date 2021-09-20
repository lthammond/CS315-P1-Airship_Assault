extends Node2D

var projectile
var target
var lives = 3
var sleep_timer
var total_points = 0


func _ready():
	create_projectile()
	create_target()
	randomize()


func create_projectile():
	projectile = load("res://src/Projectile.tscn").instance()
	projectile.position = Vector2(80, 550)
	call_deferred("add_child", projectile)
	projectile.connect("angle_changed", self, "_on_Projectile_angle_changed")
	projectile.connect("strength_changed", self, "_on_Projectile_strength_changed")
	projectile.connect("movement_stopped", self, "check_Projectile_is_sleeping")
	sleep_timer = 0


func create_target():
	target = load("res://src/AirshipTarget.tscn").instance()
	target.position = Vector2(rand_range(300, 1000), rand_range(150, 400))
	call_deferred("add_child", target)
	target.connect("target_hit", self, "on_Target_hit")


func check_Projectile_is_sleeping():
	sleep_timer +=1
	if sleep_timer == 100:
		destroy_Projectile()
		respawn_Projectile()


func destroy_Projectile():
	spawn_Explosion(projectile.position)
	projectile.call_deferred("free")


func respawn_Projectile():
	lives -= 1
	_on_Projectile_angle_changed(0)
	_on_Projectile_strength_changed(45)
	if lives >= 0:
		$HUD/LifeLabel.text = 'x%d' % lives
		create_projectile()
	else:
		destroy_Projectile()
		yield(get_tree().create_timer(0.5), "timeout")
		$AnimationPlayer.play("Rise")
		target.hide()
		yield(get_tree().create_timer(2.0), "timeout")
		$HUD/ReturnToTitleButton.show()


func spawn_Explosion(position):
	var explosion = load("res://src/Explosion.tscn").instance()
	explosion.position = position
	explosion.one_shot = true
	add_child(explosion)


func on_Target_hit():
	var points_per_target = 50
	total_points += points_per_target
	$HUD/ScoreLabel.text = 'Score:%d' % total_points
	$AirshipExplosionTimer.start()


func _on_Projectile_angle_changed(new_angle):
	$HUD/AngleLabel.text = 'Angle:%d' % -new_angle


func _on_Projectile_strength_changed(new_strength):
	$HUD/StrengthLabel.text = 'Strength:%d' % new_strength


func _on_Killbox_body_entered(_body):
	destroy_Projectile()
	respawn_Projectile()


func _on_AirshipExplosionTimer_timeout():
	spawn_Explosion(target.position)
	target.free()
	create_target()


func _on_ReturnToTitleButton_pressed():
	if get_tree().change_scene("res://src/Title.tscn") != OK:
		print ("An unexpected error occured while trying to switch to Title scene")
