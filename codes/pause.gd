extends CanvasLayer


# Called when the node enters the scene tree for the first time.
func _ready():
	visible=false


func _unhandled_input(event):
	if event.is_action_pressed("pause"):
		visible=true
		get_tree().paused = true


func _on_resume_pressed():
	get_tree().paused=false
	visible=false


func _on_menu_pressed():
	Transition.fade_in()
	get_tree().paused=false
	Transition.scene_patch="res://scenes/menu.tscn"
