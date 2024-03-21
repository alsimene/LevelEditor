extends Node

var path = ""
var slot1 = "res://SavedFiles/slot1.tscn"
var slot2 = "res://SavedFiles/slot2.tscn"
var slot3 = "res://SavedFiles/slot3.tscn"
# var slot4, slot5 etc...
#
#func save_game(slot) -> void:
	#var file
	#match slot:
		#0:
			#file = FileAccess.open(slot1, FileAccess.WRITE)
		#1:
			#file = FileAccess.open(slot2, FileAccess.WRITE)
		#2:
			#file = FileAccess.open(slot3, FileAccess.WRITE)
	#var data: Dictionary = {
		#
	#}



#
## The default values
#var default_data = {
	#"player" : {
		#"name" : "",
		#"level" : 3,
		#"health" : 10
		#},
#}
#
#var data = { }
#
#func load_data():
	#data = default_data
#
#func load_game():
	#var file = FileAccess.open(path,FileAccess.READ)
	#var text = file.get_as_text()
	#var test_json_conv = JSON.new()
	#test_json_conv.parse(text)
	#data = test_json_conv.get_data()
	#file.close()
	#
#func save_game():
	#var file
	#file = FileAccess.open(path, FileAccess.WRITE)
	#file.store_line(JSON.new().stringify(data))
	#file.close()
	#path = "res://SaveFiles/"
