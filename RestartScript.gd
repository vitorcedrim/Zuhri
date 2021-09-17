extends Node2D



func _ready():
	GameState.canRestart = false

func _process(delta):
	print(GameState.canRestart)
	if GameState.canRestart == true:
		get_tree().reload_current_scene()
	else:
		pass
		

