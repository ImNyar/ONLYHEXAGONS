extends Control
var time := 0.0
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	time += delta
	$".".text = str(snapped(time, 0.001)) # snapped is round with better rounding capabilities
