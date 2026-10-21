extends TextureButton

var _tween: Tween

func _ready() -> void:
	button_down.connect(_on_button_down)
	button_up.connect(_on_button_up)
	mouse_entered.connect(_on_mouse_entered)
	mouse_exited.connect(_on_mouse_exited)

func _on_pressed() -> void:
	print("Como jogar")
	
func _on_button_down() -> void:
	_kill_tween()
	_tween = create_tween()
	_tween.tween_property(self, "scale", Vector2(0.9, 0.9), 0.05)

func _on_button_up() -> void:
	_kill_tween()
	_tween = create_tween()
	# Efeito elástico ao soltar o botão
	_tween.tween_property(self, "scale", Vector2(1.05, 1.05), 0.1).set_trans(Tween.TRANS_BACK).set_ease(Tween.EASE_OUT)
	_tween.tween_property(self, "scale", Vector2.ONE, 0.1)

func _on_mouse_entered() -> void:
	_kill_tween()
	_tween = create_tween()
	_tween.tween_property(self, "scale", Vector2(1.1, 1.1), 0.1).set_trans(Tween.TRANS_SINE).set_ease(Tween.EASE_OUT)

func _on_mouse_exited() -> void:
	_kill_tween()
	_tween = create_tween()
	_tween.tween_property(self, "scale", Vector2.ONE, 0.1)

func _kill_tween() -> void:
	if _tween and _tween.is_valid():
		_tween.kill()
