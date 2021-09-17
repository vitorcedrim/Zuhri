extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	$WindSound.play()

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

func terminarInteracao(timeline_name):
	get_tree().change_scene("res://FimMesmokkkk.tscn")


func _on_Gato_area_entered(area):
	if GameStatus.canInteract == true:
		GameStatus.canInteract = false
		GameStatus.canMove = false
		var fala_gato2 = Dialogic.start("Gato2", false)
		add_child(fala_gato2)
		fala_gato2.connect("timeline_end", self, "terminarInteracao")
	else:
		pass


