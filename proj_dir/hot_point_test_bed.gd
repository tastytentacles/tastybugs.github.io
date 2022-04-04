extends Area2D

#func _input(event):
#	if event is InputEventMouse and event.is_pressed():
#		get_parent().load_area("res://test_bed.tscn")


func _input_event(viewport, event, shape_idx):
	if event is InputEventMouse and event.is_pressed():
		get_parent().load_area("res://test_bed.tscn")
