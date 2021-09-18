extends Control


func _on_PlayButton_pressed():
	if get_tree().change_scene("res://src/Level.tscn") != OK:
		print ("An unexpected error occured when trying to switch to the Readme scene")
