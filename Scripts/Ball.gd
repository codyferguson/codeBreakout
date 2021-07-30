extends RigidBody2D

export var speedUp = 100
const MAX_SPEED = 500
signal out_of_view

func _ready():
	set_physics_process(true)

func _physics_process(_delta):
	var bodies = get_colliding_bodies()
	
	for body in bodies:
		if body.is_in_group("bricks"):
			body._on_body_entered(body)
			body.queue_free()
			$BrickHitNoise.play()

		if body.is_in_group("Data"):
			body._on_body_entered(body)
			body.queue_free()
			$DataHitNoise.play()
			
		if body.get_name() == "Paddle":
			var speed = get_linear_velocity().length()
			var direction = get_position() - body.get_node("Anchor").get_global_position()
			var velocity = direction.normalized()*min(speed+speedUp, MAX_SPEED)
			set_linear_velocity(velocity)
			$PaddleHitNoise.play()
			
	if get_position().y > get_viewport_rect().end.y:
		reset_ball(true)

func reset_ball(emit):
	if emit: emit_signal("out_of_view")
	self.queue_free()
	
