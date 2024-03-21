extends ScrollContainer


@onready var object_cursor = get_node("/root/world/Editor_Object")

func _ready():
	connect("mouse_entered", self.mouse_entered)
	connect("mouse_exited", self.mouse_exited)
	
func mouse_entered():
	object_cursor.can_place = false
	object_cursor.hide()
	
func mouse_exited():
	object_cursor.can_place = true
	object_cursor.show()
	
