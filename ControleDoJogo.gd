extends Control


# var nome: String
# var caminho: String
# var curso: String
# var semestre: int
# var materia_favorita: String


var pessoas = [
	Pessoa.new("Bea", "res://personagens/Normais/bea.png", "ADS", 4, "Arquitetura"),
	Pessoa.new("Bruno", "res://personagens/Normais/bruno.png", "ADS", 4, "Redes"),
	Pessoa.new("Eros", "res://personagens/Normais/eros.png", "ADS", 4, "Programação"),
	Pessoa.new("Felipe", "res://personagens/Normais/felipe.png", "ADS", 4, "Banco de Dados")
]

func _ready() -> void:
	var p = pessoas.pick_random()
	$fundo/Camera2D/Personagem.texture = load(p.caminho) 
