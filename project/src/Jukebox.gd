extends Node

var main_theme := load("res://assets/AirshipAssaultTheme.ogg")
var game_over := load("res://assets/GameOver.wav")

func play_main_music():
	$Music.stream = main_theme
	$Music.play()


func play_game_over_tune():
	$Music.stream = game_over
	$Music.play()
