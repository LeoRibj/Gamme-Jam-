extends Node2D
@onready var parallax_layer_2 = $ParallaxLayer2
@onready var parallax_background = $ParallaxBackground
@onready var fundo = $fundo
var ovooo:int

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	ovooo=Globalz.contegg
	if ovooo==10:
		Transition.fade_in()
		Transition.scene_patch="res://scenes/menu.tscn"


func _on_area_2d_body_entered(body):
	fundo.visible=true
	parallax_background.visible=false
	parallax_layer_2.visible=false


func _on_area_2d_2_body_entered(body):
	fundo.visible=false
	parallax_background.visible=true
	parallax_layer_2.visible=false


func _on_area_2d_3_body_entered(body):
	fundo.visible=false
	parallax_background.visible=true
	parallax_layer_2.visible=false


func _on_area_2d_4_body_entered(body):
	fundo.visible=false
	parallax_background.visible=false
	parallax_layer_2.visible=true
