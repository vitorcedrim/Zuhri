extends Camera2D

onready var topLeft = $Limits/TopLeft
onready var bottomRight = $Limits/BottomRight

func _process(delta):
	limit_top = topLeft.position.y
	limit_left = topLeft.position.x
	limit_bottom = bottomRight.position.y
	limit_right = bottomRight.position.x
	
	
	


func _on_InternalArea_area_entered(area):
	GameStatus.hasEnteredExternalAreaOnFirstMap = false
	$ColorRect.material.set('shader_param/multiplier', 1)
	$ColorRect.material.set('shader_param/softness', 1)
	topLeft.position.x = -159
	topLeft.position.y = -47
	bottomRight.position.x = 27
	bottomRight.position.y = 329


func _on_ExternalArea_area_entered(area):
	GameStatus.hasEnteredExternalAreaOnFirstMap = true
	$ColorRect.material.set('shader_param/multiplier', 0.031)
	$ColorRect.material.set('shader_param/softness', 0.121)
	topLeft.position.x = 28
	topLeft.position.y = -47
	bottomRight.position.x = 510
	bottomRight.position.y = 329
