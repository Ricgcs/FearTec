
extends TextEdit

var texto: String = "Um apocalipse atingiu a Terra, e Doppelgangers se misturaram entre os humanos."

func _ready():
	text = ""

	for i in texto:
		text += i
		await get_tree().create_timer(0.1).timeout
