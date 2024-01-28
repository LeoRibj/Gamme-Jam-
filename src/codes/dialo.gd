extends CanvasLayer
@onready var rich_text_label = $ColorRect2/RichTextLabel
@onready var dialo = $"."

@onready var animation_player = $ColorRect2/AnimationPlayer
var cont:int
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if cont==0:
		rich_text_label.text="Ei, amigo Calango, preciso falar contigo!"
		animation_player.play("cueio")
	elif cont==1:
		rich_text_label.text="Ah, olá, Coelho da Páscoa! O que te traz por aqui?"
		animation_player.play("calango")
	elif cont==2:
		animation_player.play("cueio")
		rich_text_label.text="Olha, eu estive pensando... Sabe, com a Páscoa chegando e toda a demanda por ovos, eu estou meio sem estoque."
	elif cont==3:
		rich_text_label.text="Sem estoque? Mas você é o Coelho da Páscoa! Não deveria ter acesso ilimitado a ovos?"
		animation_player.play("calango")
	elif cont==4:
		rich_text_label.text="Bem, é que... Eu meio que... bom, eu tenho uma pequena confissão a fazer. Eu tenho emprestado alguns ovos de Galinhas e Calangos por aí para dar conta da demanda."
		animation_player.play("cueio")
	elif cont==5:
		rich_text_label.text="O que?! Você está roubando ovos?"
		animation_player.play("calango")
	elif cont==6:
		rich_text_label.text="Calma, calma! Não é bem assim... É mais como um empréstimo temporário, você entende? Eu prometo devolver depois da Páscoa!"
		animation_player.play("cueio")
	elif cont==7:
		rich_text_label.text=" Isso não parece muito ético, Coelho da Páscoa. E como você espera devolver todos esses ovos?"
		animation_player.play("calango")
	elif cont==8:
		rich_text_label.text="É aí que você entra! Preciso da sua ajuda para convencer as Galinhas e os Calangos de que eu não sou um ladrão, mas sim um prestador de serviços pascoais! Você pode me ajudar a explicar?"
		animation_player.play("cueio")
	elif cont==9:
		rich_text_label.text="Hum... Eu não sei, Coelho da Páscoa. Isso parece meio arriscado. E se eles ficarem bravos?"
		animation_player.play("calango")
	elif cont==10:
		animation_player.play("cueio")
		rich_text_label.text=" Por favor, Calango, confie em mim! Vamos lá, juntos podemos convencê-los de que a Páscoa é um momento de compartilhar e espalhar alegria, não de brigas!"
	elif cont==11:
		animation_player.play("calango")
		rich_text_label.text="Não você nunca vai pegar meus ovos!!!! E bem... os das galinhas são meus lanches favoritos!!!!"
	elif cont==12:
		animation_player.play("cueio")
		rich_text_label.text="tenho que coletar 10 ovos para conseguir!!"
	elif cont==13:
		dialo.visible=false
func _on_button_pressed():
	cont+=1
