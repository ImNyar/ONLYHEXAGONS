extends Node3D

const HEXA_UNIT := preload("res://Scenes/UnitHex.tscn")
const HEXA_SCALE : = 5
const GRID_SIZE := 13
const NUM_LEVELS := 8
const LEVEL_HEIGHT := 5

# Called when the node enters the scene tree for the first time.
func _ready():
	for z in range(NUM_LEVELS):
		_create_grid(z)

func _create_grid(z):
	#var tile = HEXA_UNIT.instantiate()
	#add_child(tile)
	#tile.scale = Vector3(1,1,1)
	#
	#tile = HEXA_UNIT.instantiate()
	#add_child(tile)
	#tile.scale = Vector3(1,1,1)
	#tile.translate(Vector3(0, 0, 1))
	#
	#tile = HEXA_UNIT.instantiate()
	#add_child(tile)
	#tile.scale = Vector3(1,1,1)
	#tile.translate(Vector3(cos(PI/6), 0, 0.5))
	
	var x_cord := 0.0
	var y_cord := 0.0
	for x in range(GRID_SIZE): # column
		if (x + 1) % 2 == 0: # every second column, shift the starting y down
			y_cord = 0.5 # by 0.5
		for y in range(GRID_SIZE): # rows
			var tile = HEXA_UNIT.instantiate() # create and add tile
			add_child(tile)
			tile.scale = Vector3(HEXA_SCALE,1,HEXA_SCALE)
			tile.translate(Vector3(x_cord, z*LEVEL_HEIGHT, y_cord)) # translate the tile
			tile.translate(Vector3(cos(PI/6) / 50, 0, 0.5 / 50)) # create a gap
			y_cord += 1 * 1.03 # this helps shift the next hexagon down
			
		x_cord += cos(PI/6) * 1.03 # this helps connect hexagons in a row
		y_cord = 0 # reset position
			

	


