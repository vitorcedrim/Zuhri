extends Control





func _on_Exit_pressed():
	get_tree().quit()


func _on_Fullscreen_pressed():
	OS.window_fullscreen = !OS.window_fullscreen
