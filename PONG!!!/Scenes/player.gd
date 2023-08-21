extends CharacterBody2D
var speed = 5000

func _ready():
	position = Vector2(918,328)
	
func _process(delta):
	velocity = Vector2.ZERO
	
	if Input.is_action_pressed("up"):
		velocity.y += -5 * speed
		
	if Input.is_action_pressed("down"):
		velocity.y += 5 *  speed
	
	
	velocity = velocity*delta
	
	move_and_slide()
	
	
	
