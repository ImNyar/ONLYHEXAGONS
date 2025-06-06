extends VBoxContainer


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.




# Settings

func _on_v_slider_value_changed(value):
	$Volume/Bar.value = value 

func _on_b_slider_value_changed(value):
	$Brightness/Bar.value = value
	
func _on_c_slider_value_changed(value):
	$Contrast/Bar.value = value
	


func _on_back_pressed():
	var home = get_node(".")
	print(home)

