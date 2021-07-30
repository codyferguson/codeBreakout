extends KinematicBody2D

signal no_balls
signal remove_ball_sprite

# Hardcoding this prob isn't best
const ball_scene = preload("res://Ball.tscn")
var ballCount; var ballAmount; var ballAllowed

func _ready():
	ballCount = 0
	ballAmount = 3
	ballAllowed = false
	set_physics_process(true)
	set_process_input(true)

func _physics_process(_delta):
	var y = position.y
	var mouse_x = get_viewport().get_mouse_position().x
	set_position(Vector2(mouse_x, y))
	
func _input(event):
	var leftMouseClicked = event is InputEventMouseButton && event.is_pressed()
	var canRelease = ballCount < 1 && ballAllowed && ballAmount > 0

	if leftMouseClicked && canRelease:
		ballCount = ballCount + 1
		ballAmount = ballAmount - 1
		var ball = ball_scene.instance()
		ball.set_name("ball")
		ball.set_position(get_position() - Vector2(0, 16))
		get_node("/root/Main").add_child(ball)
		ball.connect("out_of_view", self, "ball_left_viewport")

func ball_left_viewport():
	ballCount = ballCount - 1
	emit_signal("remove_ball_sprite")
	if ballAmount <= 0 && ballCount == 0:
		emit_signal("no_balls")

func reset_ball_amount():
	ballAmount = 3
	ballAllowed = false
	
func start_of_level():
	ballAllowed = true
	ballCount = 0
