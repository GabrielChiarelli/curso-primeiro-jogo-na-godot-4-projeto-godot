extends CanvasLayer


@onready var texto_de_pontuacao : Label = $PainelDePontuacao/MarginContainer/TextoDePontuacao
@onready var painel_de_game_over : Control = $PainelDeGameOver

func _ready():
	GameManager.aumentou_pontuacao.connect(atualizar_texto_de_pontuacao)
	GameManager.jogador_morreu.connect(ativar_painel_de_game_over)
	
	painel_de_game_over.visible = false
	

func atualizar_texto_de_pontuacao() -> void:
	texto_de_pontuacao.text = str(GameManager.pontuacao)


func ativar_painel_de_game_over() -> void:
	painel_de_game_over.visible = true





















