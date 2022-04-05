extends Node2D

# place holder

func load_area(area):
	var t_area = area.instance()
	t_area.map_return = self
	get_parent().add_child(t_area)
	
	pause_mode = Node.PAUSE_MODE_STOP
	visible = false;

func return_to_map(node):
	node.queue_free()
	
	pause_mode = Node.PAUSE_MODE_INHERIT
	visible = true;
