extends Node

const gameGrid = preload("res://GameGrid.tscn")
var hud
var bricks
var initiated = false
var downloadPercent
var firstLevelCreated
var dataHit
var complete
var level = 1
var paddle
var playing
var minTime
var secTime

func _ready():
	bricks = gameGrid.instance()
	hud = get_node("/root/Main/HUD")
	hud.connect("play_btn_pressed", self, "play_button_pressed")
	bricks.set_name("bricksGrid")
	bricks.set_position(Vector2(50, 100))
	add_child(bricks)
	$BackgroundMusic.play()

func initialize():
	init_values()
	playing = false
	hud.hide_gameHud()
	paddle = get_node("/root/Main/Paddle")
	paddle.connect("remove_ball_sprite", self, "remove_ball_sprite")
	paddle.connect("no_balls", self, "game_over")
	
func _process(_delta):
	if(!initiated):
		initialize()
		initiated = true
	if (playing):
		check_timer()
		if (level == 1 && !firstLevelCreated):
			bricks.load_level(level)
			paddle.start_of_level()
			$TimerForLevel.start()
			hud.setTimerText(minTime, secTime)
			firstLevelCreated = true
		if (check_level_complete()):
			process_level()

func process_level():
	$TimerForLevel.stop()
	level = level + 1
	if (level < 6):
		var ball = get_node("/root/Main/ball")
		ball.reset_ball(false)
		paddle.reset_ball_amount()
		init_values()
		reset_hud_values()
		$Typing.play()
		hud.level_transition_sequence("end")
		yield(get_tree().create_timer(.5), "timeout")
		bricks.clear_grid()
		yield(get_tree().create_timer(1), "timeout")
		$FinishTyping.play()
		hud.level_transition_sequence("start")
		yield(get_tree().create_timer(1.2), "timeout")
		bricks.load_level(level)
		paddle.start_of_level()
		$TimerForLevel.start()

func reset_hud_values():
	hud.setTimerText(minTime, secTime)
	hud.set_level_data(downloadPercent)
	hud.reset_ball_count()

func check_timer():
	if (minTime == 0 && secTime == 0):
		game_over()

func init_values():
	dataHit = 0.0
	downloadPercent = 0.0
	minTime = 2
	secTime = 0

func check_level_complete():
	return downloadPercent * 100 == 100

func on_data_hit():
	dataHit = dataHit + 1
	downloadPercent = dataHit / bricks.get_Data_Count()
	hud.set_level_data(downloadPercent * 100)

func _on_TimerForLevel_timeout():
	if (secTime == 0):
		minTime = minTime - 1
		secTime = 59
	else:
		secTime = secTime - 1
	hud.setTimerText(minTime, secTime)

func play_button_pressed():
	firstLevelCreated = false
	playing = true

func remove_ball_sprite():
	hud.remove_ball_sprite()

func game_over():
	hud.display_text("Game over")
	playing = false
	var ball = get_node("/root/Main/ball")
	if (ball):
		ball.reset_ball(false)
	paddle.reset_ball_amount()
	$TimerForLevel.stop()
	bricks.clear_grid()
	yield(get_tree().create_timer(1.5), "timeout")
	hud.hide_gameHud()
	hud.display_text("")
	hud.show_startScreen()
	init_values()
	hud.set_level_data(downloadPercent * 100)
	level = 1
