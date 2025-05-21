extends Node
@onready var Shape = $"." #StaticHex
const desired_time := 5.0
var time = 0
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _ready():
	pass

func _process(delta):
	time += delta
	#if time > desired_time:
		#_player_entered()
	
func _player_entered():
	queue_free()


func _on_mouse_entered():
	_player_entered()
