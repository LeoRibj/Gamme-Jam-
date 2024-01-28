extends VBoxContainer

@export var sceneToload : PackedScene
@export var optionMenu : PackedScene
@export var Quit : PackedScene

func _on_play_button_pressed():
	get_tree().change_scene_to_packed(sceneToload)

func _on_options_button_pressed():
	get_tree().change_scene_to_packed(optionMenu)	

func _on_options_button_2_pressed():
	pass
