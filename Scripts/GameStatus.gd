extends Node

var quantidadeDeChaves = 0
var chavesNoMundoAtual = 0
var keySound = false
var doorSound = false
var hasEnteredExternalAreaOnFirstMap = false
var canInteract = true
var canMove = true
var gotTheFirstKey = false

func _process(delta):
	if quantidadeDeChaves > chavesNoMundoAtual:
		quantidadeDeChaves = chavesNoMundoAtual
	else:
		pass
