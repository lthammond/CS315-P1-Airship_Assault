extends Node2D


func _process(delta):
	set("global_rotation", deg2rad(get_parent().angle))
