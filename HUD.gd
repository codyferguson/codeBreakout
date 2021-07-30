extends CanvasLayer

signal play_btn_pressed

const MAX_BALL_AMOUNT = 3

var downloadAmt = 0; var gameHud; var startScreen; var downloadBar
var timerText; var gameText; var playBtn; var exitBtn; var ballCount
var gameStartText = "terminal: Data$ sh codeBreakout.sh"
var levelStartText = "terminal: Data$ discovering data location..."
var levelCompleteText = "Download Complete."

func _ready():
	pause_mode = Node.PAUSE_MODE_PROCESS
	gameHud = get_node("/root/Main/HUD/GameHUD")
	startScreen = get_node("/root/Main/HUD/StartScreen")
	downloadBar = gameHud.get_node("DataBar")
	timerText = gameHud.get_node("TimerText")
	gameText = gameHud.get_node("GameText")
	playBtn = startScreen.get_node("PlayButton")
	exitBtn = startScreen.get_node("ExitButton")
	ballCount = MAX_BALL_AMOUNT

func set_level_data(dataCount):
	downloadBar.set_value(dataCount)

func level_transition_sequence(transition):
		gameText.text = levelCompleteText if transition == "end" else levelStartText
		yield(get_tree().create_timer(1), "timeout")
		gameText.text = ""

func hide_gameHud():
	for child in gameHud.get_children():
		child.visible = false

func show_gameHud():
	for child in gameHud.get_children():
		child.visible = true

func show_startScreen():
	for child in startScreen.get_children():
		child.visible = true

func hide_startScreen():
	for child in startScreen.get_children():
		child.visible = false

func setTimerText(minutes, seconds):
	timerText.text = "%02d:%02d" % [minutes, seconds]

func display_text(text):
	gameText.text = text

func remove_ball_sprite():
	gameHud.get_node("Ball" + str(ballCount)).visible = false
	ballCount -= 1
	
func reset_ball_count():
	ballCount = MAX_BALL_AMOUNT
	for i in range(1, MAX_BALL_AMOUNT+1):
		gameHud.get_node("Ball" + str(i)).visible = true

func _on_PlayButton_pressed():
	$MenuItemClick.play()
	hide_startScreen()
	ballCount = 3
	show_gameHud()
	emit_signal("play_btn_pressed")

func _on_menu_item_mouse_entered():
	$MenuItemHover.play()

func _on_ExitButton_pressed():
	$MenuItemClick.play()
	get_tree().quit()
