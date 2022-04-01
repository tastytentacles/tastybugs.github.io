extends Node2D

# place holder

func load_area(area):
	var lod = load(area)
	var t_area = lod.instance()
	get_parent().add_child(t_area)
	
	pause_mode = Node.PAUSE_MODE_STOP
	visible = false;

func return_to_map(node):
	node.queue_free()
	
	pause_mode = Node.PAUSE_MODE_INHERIT
	visible = true;
