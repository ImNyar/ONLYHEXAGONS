extends VBoxContainer


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.




# Settings


func _on_volume_slider_value_changed(value):
	$TextureRect/VolumeBar.value = value
	print($OptionsButtonContainer/TextureRect/VolumeBar)
