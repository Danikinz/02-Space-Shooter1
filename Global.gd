extends Node2D

var score = 0 

func _process(delta):
	if Input.is_action_just_pressed("quit"):
		get_tree().quit()
 # "quit" is esc key "menu" in project settings, go back and fix if needed
