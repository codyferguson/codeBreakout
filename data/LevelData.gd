extends Node

var level1 = {
	"bricks": [
		{"row": 7,"column": 4},{"row": 7,"column": 5},{"row": 7,"column": 6},
		{"row": 8,"column": 3},{"row": 8,"column": 7},{"row": 9,"column": 3},
		{"row": 9,"column": 7},{"row": 10,"column": 3},{"row": 10,"column": 7},
		{"row": 11,"column": 4},{"row": 11,"column": 5},{"row": 11,"column": 6},
		{"row": 3,"column": 17},{"row": 3,"column": 18},{"row": 3,"column": 19},
		{"row": 4,"column": 16},{"row": 5,"column": 16},{"row": 6,"column": 16},
		{"row": 4,"column": 20},{"row": 5,"column": 20},{"row": 6,"column": 20},
		{"row": 7,"column": 17},{"row": 7,"column": 18},{"row": 7,"column": 19}
	],
	"data": [
		{"row": 9,"column": 5},{"row": 5,"column": 18}
	]
}

var level2 = {
	"bricks": [
		{"row": 12,"column": 9},{"row": 12,"column": 10},{"row": 12,"column": 11},
		{"row": 12,"column": 12},{"row": 12,"column": 13},{"row": 12,"column": 14},
		{"row": 12,"column": 15},{"row": 12,"column": 16},{"row": 12,"column": 17},
		{"row": 12,"column": 18},{"row": 11,"column": 9},{"row": 11,"column": 10},
		{"row": 11,"column": 11},{"row": 11,"column": 12},{"row": 11,"column": 13},
		{"row": 11,"column": 14},{"row": 11,"column": 15},{"row": 11,"column": 16},
		{"row": 11,"column": 17},{"row": 11,"column": 18},{"row": 10,"column": 3},
		{"row": 10,"column": 4},{"row": 10,"column": 5},{"row": 10,"column": 6},
		{"row": 10,"column": 7},{"row": 9,"column": 3},{"row": 9,"column": 4},
		{"row": 9,"column": 5},{"row": 9,"column": 6},{"row": 9,"column": 7},
		{"row": 10,"column": 20},{"row": 10,"column": 21},{"row": 10,"column": 22},
		{"row": 10,"column": 23},{"row": 10,"column": 24},{"row": 9,"column": 20},
		{"row": 9,"column": 21},{"row": 9,"column": 22},{"row": 9,"column": 23},
		{"row": 9,"column": 24},{"row": 8,"column": 7},{"row": 7,"column": 7},
		{"row": 6,"column": 6},{"row": 8,"column": 20},{"row": 7,"column": 20},
		{"row": 6,"column": 21}
	],
	"data": [
		{"row": 7,"column": 4},{"row": 7,"column": 13},{"row": 7,"column": 23}
	]
}

var level3 = {
	"bricks": [
		{"row": 8,"column": 0},{"row": 8,"column": 1},{"row": 8,"column": 2},
		{"row": 9,"column": 0},{"row": 9,"column": 2},{"row": 10,"column": 0},
		{"row": 10,"column": 1},{"row": 10,"column": 2},{"row": 8,"column": 25},
		{"row": 8,"column": 26},{"row": 8,"column": 27},{"row": 9,"column": 25},
		{"row": 9,"column": 27},{"row": 10,"column": 25},{"row": 10,"column": 26},
		{"row": 10,"column": 27},{"row": 8,"column": 11},{"row": 8,"column": 12},
		{"row": 8,"column": 13},{"row": 8,"column": 14},{"row": 7,"column": 11},
		{"row": 7,"column": 12},{"row": 7,"column": 13},{"row": 7,"column": 14},
		{"row": 2,"column": 11},{"row": 2,"column": 12},{"row": 2,"column": 13},
		{"row": 2,"column": 14},{"row": 3,"column": 10},{"row": 3,"column": 11},
		{"row": 3,"column": 12},{"row": 3,"column": 13},{"row": 3,"column": 14},
		{"row": 3,"column": 15},{"row": 4,"column": 9},{"row": 4,"column": 10},
		{"row": 4,"column": 15},{"row": 4,"column": 16},{"row": 5,"column": 8},
		{"row": 5,"column": 9},{"row": 5,"column": 16},{"row": 5,"column": 17},
		{"row": 6,"column": 7},{"row": 6,"column": 8},{"row": 6,"column": 17},
		{"row": 6,"column": 18},{"row": 6,"column": 12},{"row": 6,"column": 13}
	],
	"data": [
		{"row": 9,"column": 1},{"row": 9,"column": 26},{"row": 5,"column": 12},{"row": 5,"column": 13}
	]
}

var level4= {
	"bricks": [
		{"row": 1,"column": 2},{"row": 1,"column": 3},{"row": 1,"column": 4},
		{"row": 1,"column": 5},{"row": 1,"column": 6},{"row": 1,"column": 7},
		{"row": 1,"column": 8},{"row": 1,"column": 9},{"row": 1,"column": 10},
		{"row": 2,"column": 2},{"row": 2,"column": 10},{"row": 3,"column": 2},
		{"row": 3,"column": 3},{"row": 3,"column": 9},{"row": 3,"column": 10},
		{"row": 4,"column": 4},{"row": 5,"column": 4},{"row": 6,"column": 4},
		{"row": 7,"column": 4},{"row": 8,"column": 4},{"row": 9,"column": 4},
		{"row": 10,"column": 4},{"row": 4,"column": 5},{"row": 5,"column": 5},
		{"row": 6,"column": 5},{"row": 7,"column": 5},{"row": 8,"column": 5},
		{"row": 9,"column": 5},{"row": 10,"column": 5},{"row": 4,"column": 7},
		{"row": 5,"column": 7},{"row": 6,"column": 7},{"row": 7,"column": 7},
		{"row": 8,"column": 7},{"row": 9,"column": 7},{"row": 10,"column": 7},
		{"row": 4,"column": 8},{"row": 5,"column": 8},{"row": 6,"column": 8},
		{"row": 7,"column": 8},{"row": 8,"column": 8},{"row": 9,"column": 8},
		{"row": 10,"column": 8},{"row": 4,"column": 16},{"row": 4,"column": 17},
		{"row": 4,"column": 21},{"row": 4,"column": 22},{"row": 5,"column": 17},
		{"row": 5,"column": 18},{"row": 5,"column": 19},{"row": 5,"column": 20},
		{"row": 5,"column": 21},{"row": 6,"column": 18},{"row": 6,"column": 19},
		{"row": 6,"column": 20},{"row": 7,"column": 18},{"row": 7,"column": 19},
		{"row": 7,"column": 20},{"row": 8,"column": 19}
	],
	"data": [
		{"row": 2,"column": 4},{"row": 2,"column": 6},{"row": 2,"column": 8},
		{"row": 2,"column": 13},{"row": 3,"column": 18},{"row": 4,"column": 19},
		{"row": 3,"column": 20},{"row": 2,"column": 26}
	]
}

var level5 = {
	"bricks": [
		{"row": 8,"column": 5},{"row": 8,"column": 6},{"row": 7,"column": 3},
		{"row": 7,"column": 4},{"row": 7,"column": 5},{"row": 7,"column": 6},
		{"row": 7,"column": 7},{"row": 7,"column": 8},{"row": 7,"column": 4},
		{"row": 6,"column": 3},{"row": 6,"column": 4},{"row": 6,"column": 7},
		{"row": 6,"column": 8},{"row": 5,"column": 2},{"row": 5,"column": 3},
		{"row": 5,"column": 8},{"row": 5,"column": 9},{"row": 4,"column": 2},
		{"row": 4,"column": 3},{"row": 4,"column": 8},{"row": 4,"column": 9},
		{"row": 3,"column": 4},{"row": 3,"column": 5},{"row": 3,"column": 6},
		{"row": 3,"column": 7},{"row": 8,"column": 17},{"row": 8,"column": 18},
		{"row": 8,"column": 19},{"row": 8,"column": 20},{"row": 8,"column": 21},
		{"row": 8,"column": 22},{"row": 8,"column": 23},{"row": 7,"column": 16},
		{"row": 7,"column": 17},{"row": 7,"column": 18},{"row": 7,"column": 19},
		{"row": 7,"column": 20},{"row": 7,"column": 21},{"row": 7,"column": 22},
		{"row": 7,"column": 23},{"row": 7,"column": 24},{"row": 6,"column": 16},
		{"row": 5,"column": 15},{"row": 4,"column": 16},{"row": 4,"column": 15},
		{"row": 6,"column": 24},{"row": 6,"column": 25},{"row": 6,"column": 26},
		{"row": 3,"column": 23},{"row": 2,"column": 22},{"row": 1,"column": 21},
		{"row": 0,"column": 20},{"row": 1,"column": 18},{"row": 1,"column": 19}
	],
	"data": [
		{"row": 5,"column": 5},{"row": 5,"column": 6},{"row": 2,"column": 12},
		{"row": 4,"column": 19},{"row": 4,"column": 21},{"row": 1,"column": 24}
	]
}
	
func _ready():
	pass # Replace with function body.

func get_level_data(level):
	match level:
		1: return level1
		2: return level2
		3: return level3
		4: return level4
		5: return level5
