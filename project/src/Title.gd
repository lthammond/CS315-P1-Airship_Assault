extends Control


func _ready():
	$AnimationPlayer.play("TitleFlyIn")
	yield(get_tree().create_timer(4.0), "timeout")
	$PlayButton.show()
	


func _on_PlayButton_pressed():
	if get_tree().change_scene("res://src/Level.tscn") != OK:
		print ("An unexpected error occured while trying to switch to Level scene")
