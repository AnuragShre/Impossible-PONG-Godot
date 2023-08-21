extends CanvasLayer
signal startpressed
signal gdone
func _ready():
	$Button2.hide()


func _on_button_pressed():
	startpressed.emit()
	$Button.hide()
	


func _on_ball_over():
	$Button2.show()
	$Button.hide()

func _on_button_2_pressed():
	gdone.emit()
	$Button2.hide()


func _on_timer_timeout():
	$Button.hide()
