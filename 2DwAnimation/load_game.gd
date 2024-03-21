extends Node2D

@onready var level = get_node("res://world.tscn")

func _on_load_slot_1_pressed():
	var toLoad: PackedScene = PackedScene.new()
	toLoad = ResourceLoader.load(SaveSlots.path)
	print(level)
	pass # Replace with function body.
