extends Area2D


@export var velocidade_do_diamante : float = 400.0

func _process(delta):
	position.y += velocidade_do_diamante * delta


func _on_body_entered(body):
	if body.is_in_group("jogador"):
		GameManager.aumentar_pontuacao()
		GerenciadorDeSons.tocar_som_do_diamante()
		queue_free()


func _on_timer_timeout():
	queue_free()
