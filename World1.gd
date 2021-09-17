extends Node2D

var starHasRunCama = false
var starHasRunComoda = false
var starHasRunArmarioDeLivros = false
var starHasRunCaixaFechada = false
var starHasRunFotografias = false
var starHasRunTelefone = false
var starHasRunTV = false
var starHasRunMesa = false
var starHasRunArmarioVazio = false
var starHasRunCabeceira = false
var starHasRunPlaca = false
var starHasRunGato1 = false

func changeToSecondLevel():
		GameStatus.quantidadeDeChaves = 0
		GameStatus.chavesNoMundoAtual = 0
		get_tree().change_scene("res://World2.tscn")

func terminarInteracao(timeline_name):
		GameStatus.canInteract = true
		GameStatus.canMove = true
		
func terminarInteracao2(timeline_name):
		GameStatus.canInteract = true
		GameStatus.canMove = true
		changeToSecondLevel()

onready var DialogicSpawn = $Camera2D/InteractionText
var forestSoundHasRun = false

# Called when the node enters the scene tree for the first time.
func _ready():
	GameStatus.chavesNoMundoAtual += 1
	$ForestSound.play()

func _on_Cama_area_entered(area):
	if GameStatus.canInteract == true:
		GameStatus.canInteract = false
		GameStatus.canMove = false
		var fala_cama = Dialogic.start("Cama", false)
		add_child(fala_cama)
		fala_cama.connect("timeline_end", self, "terminarInteracao")
		if starHasRunCama == false:
			starHasRunCama = true
			$StarCama.queue_free()
		else:
			pass
		
	else:
		pass




# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_ArmarioDeLivros_area_entered(area):
	if GameStatus.canInteract == true:
		GameStatus.canInteract = false
		GameStatus.canMove = false
		var fala_estantedelivros = Dialogic.start("EstanteDeLivros", false)
		add_child(fala_estantedelivros)
		fala_estantedelivros.connect("timeline_end", self, "terminarInteracao")
		if starHasRunArmarioDeLivros == false:
			starHasRunArmarioDeLivros = true
			$StarArmarioDeLivros.queue_free()
		else:
			pass
	else:
		pass



func _on_CaixaFechada_area_entered(area):
	if GameStatus.canInteract == true:
		GameStatus.canInteract = false
		GameStatus.canMove = false
		var fala_caixafechada = Dialogic.start("CaixaFechada", false)
		add_child(fala_caixafechada)
		fala_caixafechada.connect("timeline_end", self, "terminarInteracao")
		if starHasRunCaixaFechada == false:
			starHasRunCaixaFechada = true
			$StarCaixaFechada.queue_free()
		else:
			pass
	else:
		pass


func _on_TV_area_entered(area):
	if GameStatus.canInteract == true:
		GameStatus.canInteract = false
		GameStatus.canMove = false
		var fala_TV = Dialogic.start("TV", false)
		add_child(fala_TV)
		fala_TV.connect("timeline_end", self, "terminarInteracao")
		if starHasRunTV == false:
			starHasRunTV = true
			$StarTV.queue_free()
		else:
			pass
	else:
		pass


func _on_Telefone_area_entered(area):
	if GameStatus.canInteract == true:
		GameStatus.canInteract = false
		GameStatus.canMove = false
		var fala_telefone = Dialogic.start("Telefone", false)
		add_child(fala_telefone)
		fala_telefone.connect("timeline_end", self, "terminarInteracao")
		if starHasRunTelefone == false:
			starHasRunTelefone = true
			$StarTelefone.queue_free()
	else:
		pass


func _on_Comoda_area_entered(area):
	if GameStatus.canInteract == true:
		GameStatus.canInteract = false
		GameStatus.canMove = false
		var fala_comoda = Dialogic.start("Comoda", false)
		add_child(fala_comoda)
		fala_comoda.connect("timeline_end", self, "terminarInteracao")
		if starHasRunComoda == false:
			starHasRunComoda = true
			$StarComoda.queue_free()
	else:
		pass


func _on_Fotografias_area_entered(area):
	if GameStatus.canInteract == true:
		GameStatus.canInteract = false
		GameStatus.canMove = false
		var fala_fotografias = Dialogic.start("Fotografias", false)
		add_child(fala_fotografias)
		fala_fotografias.connect("timeline_end", self, "terminarInteracao")
		if starHasRunFotografias == false:
			starHasRunFotografias = true
			$StarFotografias.queue_free()
	else:
		pass


func _on_Mesa_area_entered(area):
	if GameStatus.canInteract == true:
		GameStatus.canInteract = false
		GameStatus.canMove = false
		var fala_mesa = Dialogic.start("Mesa", false)
		add_child(fala_mesa)
		fala_mesa.connect("timeline_end", self, "terminarInteracao")
		if starHasRunMesa == false:
			starHasRunMesa = true
			$StarMesa.queue_free()
	else:
		pass


func _on_ArmarioVazio_area_entered(area):
	if GameStatus.canInteract == true:
		GameStatus.canInteract = false
		GameStatus.canMove = false
		var fala_armariovazio = Dialogic.start("ArmarioVazio", false)
		add_child(fala_armariovazio)
		fala_armariovazio.connect("timeline_end", self, "terminarInteracao")
		if starHasRunArmarioVazio == false:
			starHasRunArmarioVazio = true
			$StarArmarioVazio.queue_free()
	else:
		pass


func _on_Cabeceira_area_entered(area):
	if GameStatus.canInteract == true:
		GameStatus.canInteract = false
		GameStatus.canMove = false
		var fala_cabeceira = Dialogic.start("Cabeceira", false)
		add_child(fala_cabeceira)
		fala_cabeceira.connect("timeline_end", self, "terminarInteracao")
		if starHasRunCabeceira == false:
			starHasRunCabeceira = true
			GameStatus.gotTheFirstKey = true
			GameStatus.quantidadeDeChaves += 1
			$StarCabeceira.queue_free()
	else:
		pass


func _on_Area2D_area_entered(area):
	if GameStatus.gotTheFirstKey == true:
		GameStatus.doorSound = true
		$PrimeiroPortao.hide()
		$PrimeiroPortao.queue_free()
	elif GameStatus.canInteract == true:
		GameStatus.canInteract = false
		GameStatus.canMove = false
		var fala_portaofechado = Dialogic.start("PortaoFechado", false)
		add_child(fala_portaofechado)
		fala_portaofechado.connect("timeline_end", self, "terminarInteracao")
	else:
		pass


func _on_Placa_area_entered(area):
	if GameStatus.canInteract == true:
		GameStatus.canInteract = false
		GameStatus.canMove = false
		var fala_placa = Dialogic.start("Placa", false)
		add_child(fala_placa)
		fala_placa.connect("timeline_end", self, "terminarInteracao")
		if starHasRunPlaca == false:
			starHasRunPlaca = true
			GameStatus.gotTheFirstKey = true
			GameStatus.quantidadeDeChaves += 1
			$StarPlaca.queue_free()
	else:
		pass
		
func _on_Gato_area_entered(area):
	if GameStatus.canInteract == true:
		GameStatus.canInteract = false
		GameStatus.canMove = false
		var fala_gato1 = Dialogic.start("Gato1", false)
		add_child(fala_gato1)
		fala_gato1.connect("timeline_end", self, "terminarInteracao2")
		if starHasRunGato1 == false:
			starHasRunGato1 = true
			GameStatus.gotTheFirstKey = true
			GameStatus.quantidadeDeChaves += 1
			$StarGato.queue_free()
	else:
		pass
