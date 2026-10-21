extends TextEdit

var texto: String = "Sua missão é fiscalizar a entrada de estudantes e professores na Fatec."

func _ready():
	text = ""
	await get_tree().create_timer(9.2).timeout

	for i in texto:
		text += i
		await get_tree().create_timer(0.1).timeout
	get_tree().change_scene_to_file("res://jogo.tscn")
