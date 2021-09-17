extends Node2D

# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	GameStatus.chavesNoMundoAtual += 1


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Area2D_area_entered(area):
	GameStatus.keySound = true
	GameStatus.quantidadeDeChaves += 1
	hide()
	queue_free()
