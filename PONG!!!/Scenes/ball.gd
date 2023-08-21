extends CharacterBody2D
var vel = Vector2(200,200)
signal over


func _process(delta):
	var cl = move_and_collide(vel*delta)
	if cl:
		cl = cl.get_normal()
		vel = vel.bounce(cl)
		
	if position.x>=1000:
		over.emit()


