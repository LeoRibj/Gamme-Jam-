extends CharacterBody2D
var speed=200
var gravity=300
var pular:bool
@onready var anim = $anim
@onready var texture = $texture
@onready var label = $CanvasLayer/ColorRect/Label
var vida=10
var morto=false
func _process(delta):
	label.text=str(Globalz.contegg)
func _physics_process(delta) -> void:
	if morto:
		return
	else:
		movie()
		animation()
		if not is_on_floor():
			velocity.y+=gravity*delta
			pular=true
	
func movie() ->void:
	var direction = Input.get_axis("esquerda" ,"direita ")
	
	if Input.is_action_just_pressed("pular") and is_on_floor() :
		velocity.y=(-250)
			
		
	if direction:
		velocity.x=direction*speed
		
	else:
		velocity.x = move_toward(velocity.x,0,speed)
	move_and_slide()

func animation():
	if velocity.x<0:
		texture.flip_h=false
	elif velocity.x>0:
		texture.flip_h=true
	if velocity.x!=0 and is_on_floor():
		anim.play("andar")
		return
	if not is_on_floor():
		anim.play("pular")
		return
	anim.play("idle")

func update_health(value : int) ->void:
	vida-=value
	if vida <= 0:
		anim.play("hit")
		morto=true
		anim.play("death")
		Globalz.contegg=0
		return


func _on_anim_animation_finished(anim_name):
	match anim_name:
		"death":
			get_tree().reload_current_scene()
