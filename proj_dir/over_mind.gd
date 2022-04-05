extends Control

signal close_room

func _ready():
	pass
	
func _input(event):
	if event is InputEventKey:
		if event.scancode == KEY_ESCAPE and event.is_pressed():
			emit_signal("close_room")
