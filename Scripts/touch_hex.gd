extends Node
@onready var Shape = $"." #StaticHex
const desired_time := 5.0
var time = 0
var test = 0
var timer_started = false
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _ready():
	pass

func _process(delta):
	time += delta
	#if time > desired_time:
		#_player_entered()

func collision_timer_start():
	$Timer.start()
	timer_started = true

	
func _on_timer_timeout():
	$".".queue_free()

