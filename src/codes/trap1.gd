extends CharacterBody2D
@onready var anim:AnimationPlayer=get_node("AnimationPlayer")

func _ready():
	anim.play("trap")

func _on_area_2d_body_entered(body):
	body.update_health(10)
