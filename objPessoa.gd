
class_name Pessoa
extends RefCounted

var nome: String
var caminho: String
var curso: String
var semestre: int
var materia_favorita: String


func _init(p_nome: String, p_caminho: String, p_curso: String,
	p_semestre: int,
	p_materia_favorita: String
) -> void:
	nome = p_nome
	caminho = p_caminho
	curso = p_curso
	semestre = p_semestre
	materia_favorita = p_materia_favorita
