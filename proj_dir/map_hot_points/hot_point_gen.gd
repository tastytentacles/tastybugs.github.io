extends Area2D

export var target : PackedScene



func _ready():
	$Label.visible = false
	
	connect("mouse_entered", self, "mouse_in")
	connect("mouse_exited", self, "mouse_out")

func _input_event(viewport, event, shape_idx):
	if event is InputEventMouse and event.is_pressed():
		get_parent().load_area(target)

func mouse_in():
	$Label.visible = true
	
func mouse_out():
	$Label.visible = false
