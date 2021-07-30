extends Node2D

var font; var col; var matrix = []; var upd = 0; var move = 0

func _ready():
	font = DynamicFont.new()
	font.font_data = load("res://fonts/FreeSans-LrmZ.ttf")
	font.size = 10
	for f in range(65):
		matrix.append([])
		for y in range(38):
			if y == 0: 
				randomize(); matrix[f].append(Vector2(randi()&1,int(randi()%11)))
			else: 
				matrix[f].append(Vector2(0,1))

func mtrx():
	if upd == 10:
		upd = 0
	for f in range(65):
		matrix[f][0] = Vector2(int(rand_range(0,2)), int(randi()%11))
	for f in range(65):
		if matrix[f][0].y > 0:
			matrix[f].push_front(Vector2(matrix[f][0].x, matrix[f][0].y - 1))
			matrix[f].pop_back()
		elif matrix[f][upd].y <= 0:
			matrix[f].push_front(Vector2(randi()&1, int(randi()%11)))
			matrix[f].pop_back()
	upd += 1

func _process(delta):
	move += delta
	if (move > 0.15):
		mtrx()
		move = 0
		update()

func _draw():
	for f in range(65):
		for y in range(38):
			if matrix[f][y].y == 10:
				col = Color(1, 1, 1, matrix[f][y].y * 0.1)
			else:
				col = Color(0,1,0,matrix[f][y].y*0.1)
			draw_string(font, Vector2(f*16, y*16+16), str(matrix[f][y].x), col)
