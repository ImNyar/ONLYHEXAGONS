extends VBoxContainer


# Called when the node enters the scene tree for the first time.
func _ready():
	print("start") # Replace with function body.

func _on_play_pressed():
	get_tree().change_scene_to_file("res://Scenes/game.tscn") # Replace with function body.




func _on_exit_pressed():
	get_tree().quit()


func _on_options_pressed():
	get_tree().change_scene_to_file("res://Scenes/options_menu.tscn")


func _on_credits_pressed():
	get_tree().change_scene_to_file("res://Scenes/credits_menu.tscn")


func _on_tutorial_pressed():
	get_tree().change_scene_to_file("res://Scenes/tutorial_menu.tscn")
