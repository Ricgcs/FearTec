extends TextureButton


func _on_pressed() -> void:
	print("Jogo")
	get_tree().change_scene_to_file("res://main.tscn")
