extends Node



func _on_Exit_pressed():
	get_tree().quit()

func _on_menuFull_pressed():
	OS.window_fullscreen = !OS.window_fullscreen


func _on_menuReinic_pressed():
	pass # Replace with function body.
	print_debug("New Game Pressed")
	
