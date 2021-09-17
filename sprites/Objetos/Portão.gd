extends Sprite


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Area2D_area_entered(area):
	if GameStatus.quantidadeDeChaves == GameStatus.chavesNoMundoAtual:
		GameStatus.doorSound = true
		hide()
		queue_free()
	else:
		print("Colete todas as chaves para abrir o portão!")
