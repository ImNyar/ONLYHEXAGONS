extends Node3D

const HEXA_UNIT := preload("res://Scenes/UnitHex.tscn")
const HEXA_SCALE : = 5
const GRID_SIZE := 13
const NUM_LEVELS := 8

# Called when the node enters the scene tree for the first time.
func _ready():
	_create_grid()

func _create_grid():
	for x in range(GRID_SIZE):
		for y in range(GRID_SIZE):
			var tile = HEXA_UNIT.instantiate()
			add_child(tile)

	
