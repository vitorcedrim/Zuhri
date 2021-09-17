extends RichTextLabel


func _process(delta):
	self.text = str(GameStatus.quantidadeDeChaves,"/",GameStatus.chavesNoMundoAtual)
