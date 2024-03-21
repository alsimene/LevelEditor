extends Node2D
var can_place = true
@onready var level = get_node("/root/world/level")
@onready var tile_map:TileMap = level.get_node("TileMap")

var current_item
# Called when the node enters the scene tree for the first time.
func _process(_delta):
	global_position = get_global_mouse_position()
	if !Global.place_tile:	
		if(current_item != null and can_place and Input.is_action_just_pressed("mb_left")):
			var new_item = current_item.instantiate()
			level.add_child(new_item)
			new_item.owner = level
			new_item.global_position = get_global_mouse_position()
	else:
		if can_place:
			if Input.is_action_pressed("mb_left"):
				place_tile()
				
			if Input.is_action_pressed("mb_right"):
				remove_tile()
	pass

func place_tile():
	var mousepos = tile_map.local_to_map(get_global_mouse_position())
	tile_map.set_cell(0,Vector2i(mousepos.x,mousepos.y),Global.current_tile,Vector2i(0,0),0)
	
func remove_tile():
	var mousepos = tile_map.local_to_map(get_global_mouse_position())
	tile_map.set_cell(0,Vector2i(mousepos.x,mousepos.y),Global.current_tile,Vector2i(-1,-1),-1)
