extends Node2D


@onready var som_do_diamante : AudioStreamPlayer = $SomDoDiamante
@onready var musica_de_fundo : AudioStreamPlayer = $MusicaDeFundo
@onready var som_de_game_over : AudioStreamPlayer = $SomDeGameOver

func _ready():
	process_mode = Node.PROCESS_MODE_ALWAYS
	
	tocar_musica_de_fundo()
	

func tocar_som_do_diamante() -> void:
	som_do_diamante.play()
	

func tocar_musica_de_fundo() -> void:
	musica_de_fundo.play()
	

func tocar_som_de_game_over() -> void:
	musica_de_fundo.stop()
	som_de_game_over.play()
