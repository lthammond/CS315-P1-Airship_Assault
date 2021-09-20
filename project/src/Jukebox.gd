extends Node

var main_theme = load("res://assets/airshipAssaultTheme.ogg")

func play_music():
	$Music.stream = main_theme
	$Music.play()
