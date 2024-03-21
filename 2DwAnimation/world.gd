extends Node2D

@onready var level = get_node("/root/world/level")
@onready var tile_map: TileMap = level.get_node("TileMap")
@onready var popup = get_node("/root/world/MenuPanel/Panel")

func _on_button_pressed():
	get_tree().reload_current_scene()
	pass # Replace with function body.


func _on_menu_pressed():
	popup.show()
	pass # Replace with function body.


func _on_cancel_pressed():
	popup.hide()
	pass # Replace with function body.


func _on_save_slot_1_pressed():
	SaveSlots.path = SaveSlots.slot1
	var toSave: PackedScene = PackedScene.new()
	tile_map.owner = level
	toSave.pack(level)
	ResourceSaver.save(toSave, SaveSlots.path)
	pass # Replace with function body.



func _on_loading_slot_1_pressed():
	SaveSlots.path = SaveSlots.slot1
	var toLoad: PackedScene = PackedScene.new()
	toLoad = ResourceLoader.load(SaveSlots.path)
	var this_level = toLoad.instantiate()
	get_parent().remove_child(level)
	level.queue_free()
	get_parent().add_child(this_level)
	tile_map = get_parent().get_node("level/TileMap")
	level = this_level
	pass # Replace with function body.
	
