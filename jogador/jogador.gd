extends CharacterBody2D


var velocidade_do_jogador : float = 400.0
@onready var animated_sprite_2d : AnimatedSprite2D = $AnimatedSprite2D

func _ready():
	pass


func _process(delta):
	movimentar_jogador()
	

func movimentar_jogador() -> void:
	if Input.is_action_pressed("mv_direito"):
		velocity.x = velocidade_do_jogador
		animated_sprite_2d.flip_h = false
		animated_sprite_2d.play("andando")
	elif Input.is_action_pressed("mv_esquerdo"):
		velocity.x = -velocidade_do_jogador
		animated_sprite_2d.flip_h = true
		animated_sprite_2d.play("andando")
	else:
		velocity.x = 0
		animated_sprite_2d.play("parado")

	move_and_slide()
