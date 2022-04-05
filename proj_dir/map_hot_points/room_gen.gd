extends Node2D
class_name RoomGen

var map_return = null

func _ready():
	get_tree().root.get_node("tasty_os").connect("close_room", self, "exit_room")

#func _input(event):
#	if event is InputEventKey:
#		if event.scancode == KEY_ESCAPE and event.is_pressed():
#			get_parent().get_node("map_screen").return_to_map(self)

func exit_room():
	map_return.pause_mode = Node.PAUSE_MODE_INHERIT
	map_return.visible = true
	map_return.get_node("Camera2D").current = true
	
	queue_free()
