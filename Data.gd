extends StaticBody2D

signal hit
export var width = 31
export var height = 15


# Called when the node enters the scene tree for the first time.
func _ready():
	pass

func get_Data_Width():
	return width
	
func get_Data_Height():
	return height

func _on_body_entered(_body):
	emit_signal("hit")
	
func _process(_delta):
	rotation += 3 * _delta
