extends Node2D


func _on_canvas_layer_startpressed():
	$Ball.position = Vector2(215,180)


func _on_canvas_layer_gdone():
	_on_canvas_layer_startpressed()
