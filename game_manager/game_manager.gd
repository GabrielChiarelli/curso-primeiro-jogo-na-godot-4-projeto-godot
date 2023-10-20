extends Node2D


signal aumentou_pontuacao
signal jogador_morreu


var pontuacao : int = 0

func _ready():
	process_mode = Node.PROCESS_MODE_ALWAYS


func _process(delta):
	reiniciar_jogo()
	sair_do_jogo()
	

func reiniciar_jogo() -> void:
	if Input.is_action_just_pressed("reiniciar_jogo"):
		get_tree().reload_current_scene()
		get_tree().paused = false
		pontuacao = 0
		GerenciadorDeSons.tocar_musica_de_fundo()


func sair_do_jogo() -> void:
	if Input.is_action_just_pressed("sair_do_jogo"):
		get_tree().quit()


func aumentar_pontuacao() -> void:
	pontuacao += 1
	aumentou_pontuacao.emit()
	
	
func derrotar_jogador() -> void:
	get_tree().paused = true
	jogador_morreu.emit()
	GerenciadorDeSons.tocar_som_de_game_over()
