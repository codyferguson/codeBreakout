extends StaticBody2D

signal hit
export var width = 31
export var height = 15

func _ready():
	pass # Replace with function body.

func start(pos):
	position = pos
	show()

func get_Brick_Width():
	return width
	
func get_Brick_Height():
	return height

func _on_body_entered(body):
	pass
