extends Node2D

var projectile
var target
var extra_life
var lives := 3
var sleep_timer
var extra_life_on_screen := false
var total_points := 0

func _ready():
	randomize()
	create_projectile()
	create_target()


func create_projectile():
	projectile = load("res://src/Projectile.tscn").instance()
	projectile.position = Vector2(80, 550)
	call_deferred("add_child", projectile)
	projectile.connect("angle_changed", self, "_on_Projectile_angle_changed")
	projectile.connect("strength_changed", self, "_on_Projectile_strength_changed")
	projectile.connect("movement_stopped", self, "check_projectile_is_sleeping")
	sleep_timer = 0


func create_target():
	target = load("res://src/AirshipTarget.tscn").instance()
	target.position = Vector2(rand_range(300, 1000), rand_range(150, 400))
	call_deferred("add_child", target)
	target.connect("target_hit", self, "_on_Target_hit")


func create_extra_life():
	extra_life = load("res://src/ExtraLife.tscn").instance()
	extra_life.position = Vector2(rand_range(300, 1000), rand_range(150, 400))
	call_deferred("add_child", extra_life)
	extra_life.connect("extra_life_obtained", self, "_on_extra_life_obtained")


func check_projectile_is_sleeping():
	sleep_timer += 1
	if sleep_timer == 100:
		destroy_projectile()
		respawn_projectile()


func destroy_projectile():
	spawn_explosion(projectile.position)
	projectile.call_deferred("free")


func respawn_projectile():
	lives -= 1
	_on_Projectile_angle_changed(0)
	_on_Projectile_strength_changed(45)
	
	if lives >= 0:
		$HUD/LifeLabel.text = 'x%d' % lives
		create_projectile()
		roll_for_extra_life_spawn()
		
	else:
		destroy_projectile()
		
		yield(get_tree().create_timer(0.5), "timeout")
		$AnimationPlayer.play("Rise")
		target.call_deferred("free")
		if extra_life_on_screen == true:
			extra_life.call_deferred("free")
			
		yield(get_tree().create_timer(2.0), "timeout")
		$HUD/ReturnToTitleButton.show()
		$HUD/GameOverLabel.show()
		Jukebox.play_game_over_tune()


func spawn_explosion(position):
	var explosion = load("res://src/Explosion.tscn").instance()
	explosion.position = position
	explosion.one_shot = true
	add_child(explosion)


func roll_for_extra_life_spawn():
	if extra_life_on_screen == false:
		var rng = RandomNumberGenerator.new()
		rng.randomize()
		var random_number = rng.randi_range(0, 1)
		print(random_number)
		if random_number == 1:
			create_extra_life()
			extra_life_on_screen = true


func _on_Target_hit():
	var points_per_target = 50
	total_points += points_per_target
	$HUD/ScoreLabel.text = 'Score:%d' % total_points
	$AirshipExplosionTimer.start()


func _on_Projectile_angle_changed(new_angle):
	$HUD/AngleLabel.text = 'Angle:%d' % -new_angle


func _on_Projectile_strength_changed(new_strength):
	$HUD/StrengthLabel.text = 'Strength:%d' % new_strength


func _on_Killbox_body_entered(_body):
	destroy_projectile()
	respawn_projectile()


func _on_AirshipExplosionTimer_timeout():
	spawn_explosion(target.position)
	target.call_deferred("free")
	create_target()


func _on_extra_life_obtained():
	lives += 1
	$HUD/LifeLabel.text = 'x%d' % lives
	extra_life.call_deferred("free")
	extra_life_on_screen = false


func _on_ReturnToTitleButton_pressed():
	if get_tree().change_scene("res://src/Title.tscn") != OK:
		print ("An unexpected error occured while trying to switch to Title scene")
