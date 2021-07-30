extends Node2D

const brickNode = preload("res://Brick.tscn")
const dataNode = preload("res://Data.tscn")
var file = File.new()
var levelData = {}
export var width = 850
export var length = 250
var rowTotal
var columnTotal
var dataCount

func _ready():
	var brick1 = brickNode.instance()
	columnTotal = width / brick1.get_Brick_Width()
	rowTotal = length / brick1.get_Brick_Height()
	brick1.queue_free()
	
	file.open("res://data/levelData.json", file.READ)
	levelData = parse_json(file.get_as_text())
	file.close()
	
func get_Data_Count():
	return dataCount
	
func clear_grid():
	for child in get_children():
		child.queue_free()

func load_level(level):
	print("level: ", level)
	var bricksData = levelData["levels"][level-1]["bricks"]
	# Add bricks from json data into scene
	load_bricks(bricksData)
		
	
	dataCount = 0
	# Add data objects from json data into scene
	var datas = levelData["levels"][level-1]["data"]
	for data in datas:
		dataCount = dataCount + 1
		var dataObject = dataNode.instance()
		var dataRow = data["row"]
		var dataCol = data["column"]
		var dataWidth = dataObject.get_Data_Width()
		var dataHeight = dataObject.get_Data_Height()
		
		dataObject.set_position(get_position() + Vector2(dataCol * dataWidth, dataRow * dataHeight))
		dataObject.set_name("data")
		var parent = get_node("/root/Main")
		dataObject.connect('hit', parent, 'on_data_hit')
		self.add_child(dataObject)

func load_bricks(bricksData):
	for brickData in bricksData:
		var brick = brickNode.instance()
		var brickRow = brickData["row"]
		var brickCol = brickData["column"]
		var brickWidth = brick.get_Brick_Width()
		var brickHeight = brick.get_Brick_Height()
		brick.set_position(get_position() + Vector2(brickCol * brickWidth, brickRow * brickHeight))
		self.add_child(brick)
