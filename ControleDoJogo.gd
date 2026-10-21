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

	var fala = "Olá meu nome é %s sou do curso %s no semestre %d e minha matéria favorita é %s" % [
		p.nome,
		p.curso,
		p.semestre,
		p.materia_favorita
	]
	print(fala)
	$fundo/Camera2D/Personagem.texture = load(p.caminho)

	$fundo/Camera2D/fala.text = ""

	for i in fala:
		$fundo/Camera2D/fala.text += i
		await get_tree().create_timer(0.1).timeout
