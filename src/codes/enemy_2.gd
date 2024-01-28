extends CharacterBody2D
var speed:float = 50
var direction = -1
var vida:int =3
var morto=false
@onready var texture=$Sprite2D
@onready var anim:=$AnimationPlayer
@onready var paredco=$RayCast2D
@onready var playerbody=$Area2D/kill
var gravidade=1000
func _physics_process(delta):
	if morto:
		return
	else:
		move()
		animation()
		if not is_on_floor():
			velocity.y+=gravidade*delta
		
	
func move()->void:
	
	velocity.x = speed*direction
	move_and_slide()
func animation() ->void:
	if velocity.x<0:
		texture.flip_h=false
		paredco.scale.x*=-1
	if velocity.x>0:
		texture.flip_h=true
		paredco.scale.x*=-1
	if velocity.x!=0:
		anim.play("run")
	if paredco.is_colliding():
		anim.play("idle")
	


func _on_animation_player_animation_finished(anim_name):
	match anim_name:
		"idle":
			texture.flip_h
			direction*=-1
		"death":
			queue_free()




func update_health(value : int) ->void:
	vida-=value
	if vida <= 0:
		anim.play("hit")
		morto=true
		anim.play("death")
		
		return
	


func _on_area_2d_body_entered(body):
	if body.velocity.y>0:
		update_health(10)
		body.velocity.y=(-250)



func _on_matar_body_entered(body):
	body.update_health(10)
