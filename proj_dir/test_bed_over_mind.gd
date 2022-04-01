extends Node2D


func _input(event):
	if event is InputEventKey:
		if event.scancode == KEY_ESCAPE and event.is_pressed():
			get_parent().get_node("map_screen").return_to_map(self)
