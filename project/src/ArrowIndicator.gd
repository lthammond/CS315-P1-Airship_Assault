extends Node2D

func _process(delta):
	set("global_rotation", deg2rad(get_parent().angle))
	$Sprite.position = Vector2(get_parent().strength, 0)
	$Sprite.scale = Vector2(get_parent().strength/30, 1)
