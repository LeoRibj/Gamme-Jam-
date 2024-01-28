extends Control
@onready var audio_stream_player = $AudioStreamPlayer

func _ready():
	audio_stream_player.playing

func _on_play_button_pressed():
	Transition.fade_in(true)
	Transition.scene_patch="res://scenes/level.tscn"

func _on_op_pressed():
	Transition.fade_in()
	


func _on_options_button_2_pressed():
	Transition.fade_in()
	Transition.can_quit=true
