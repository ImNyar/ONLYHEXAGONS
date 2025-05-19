extends Node3D

const HEXA_UNIT := preload("res://Scenes/UnitHex.tscn")
var grid_size := 13
var num_levels := 8

# Called when the node enters the scene tree for the first time.
func _ready():
	_create_grid()

func _create_grid():
	pass

	
