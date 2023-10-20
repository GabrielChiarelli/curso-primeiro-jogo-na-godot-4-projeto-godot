extends Node2D


@export var objetos_para_gerar : Array[PackedScene]
@onready var pontos_onde_gerar : Array = [
	$PontosOndeGerar/Marker2D,
	$PontosOndeGerar/Marker2D2,
	$PontosOndeGerar/Marker2D3,
	$PontosOndeGerar/Marker2D4,
	$PontosOndeGerar/Marker2D5,
	$PontosOndeGerar/Marker2D6
]

@onready var objetos_gerados : Node2D = $ObjetosGerados
@onready var timer : Timer = $Timer

func _ready():
	timer.start()


func gerar_objeto() -> void:
	var ponto_aleatorio = pontos_onde_gerar[randi() % pontos_onde_gerar.size()]
	var objeto_aleatorio = objetos_para_gerar[randi() % objetos_para_gerar.size()].instantiate()

	objeto_aleatorio.position = ponto_aleatorio.position
	objetos_gerados.add_child(objeto_aleatorio)


func _on_timer_timeout():
	gerar_objeto()
