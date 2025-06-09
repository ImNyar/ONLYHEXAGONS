extends VBoxContainer
# Settings

func _on_v_slider_value_changed(value):
	$Volume/Bar.value = value 

func _on_b_slider_value_changed(value):
	$Brightness/Bar.value = value
	
func _on_c_slider_value_changed(value):
	$Contrast/Bar.value = value
	
func _on_back_pressed():
	get_tree().change_scene_to_file("res://Scenes/main_menu.tscn")

