extends CharacterBody2D
var ball_position: Vector2
var ball_direction: Vector2



func _process(delta):
	velocity = Vector2.ZERO
	ball_position = $"../Ball".position
	ball_direction.x = (ball_position.x - position.x)
	ball_direction.y = (ball_position.y - position.y)
	if  ball_position.x<self.position.x:
		velocity.x += ball_direction.x * delta*50
		move_and_collide(velocity)
	if ball_position.y != self.position.y :
		velocity.y += ball_direction.y*delta*50
		move_and_collide(velocity)
		
	
