extends TextureRect

@export var this_scene: PackedScene
@onready var object_cursor = get_node("/root/world/Editor_Object")
@onready var cursor_sprite = object_cursor.get_node("Sprite2D")
@export var tile = false
@export var tile_id = 0

func _ready():
	connect("gui_input",self._item_clicked)
	pass # Replace with function body.

func _item_clicked(event):
	if(event is InputEvent):
		if(!tile):
			if(event.is_action_pressed("mb_left")):
				object_cursor.current_item = this_scene
				cursor_sprite.texture = texture
				Global.place_tile = false
		else:
			if(event.is_action_pressed("mb_left")):
				Global.place_tile = true
				Global.current_tile = tile_id
				cursor_sprite.texture = texture
	pass
