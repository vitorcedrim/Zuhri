extends Node

func _ready():
	$Label.visible = false
	$ColorRect.visible = false

func _process(delta):
	if Input.is_action_just_pressed("pause"):
		if get_tree().paused == false:
			get_tree().paused = true
			$Label.visible = true
			$ColorRect.visible = true
		else:
			get_tree().paused = false
			$Label.visible = false
			$ColorRect.visible = false


func _on_NewGame_pressed():
	GameStatus.quantidadeDeChaves = 0
	GameStatus.chavesNoMundoAtual = 0
	GameStatus.gotTheFirstKey = false
	get_tree().reload_current_scene()
	get_tree().paused = false
	$Label.visible = false
	$ColorRect.visible = false
