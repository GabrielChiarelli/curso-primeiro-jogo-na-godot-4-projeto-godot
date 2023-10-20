extends Area2D


@export var velocidade_da_serra : float = 400.0

func _process(delta):
	position.y += velocidade_da_serra * delta


func _on_body_entered(body):
	if body.is_in_group("jogador"):
		GameManager.derrotar_jogador()


func _on_timer_timeout():
	queue_free()
