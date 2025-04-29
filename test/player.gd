extends CharacterBody2D

const SPEED = 150.0

func _physics_process(delta):
	if Input.is_action_pressed("ui-left") && !Global.paused:
		position.x -= SPEED*delta
	if Input.is_action_pressed("ui-right") && !Global.paused:
		position.x += SPEED*delta
	if Input.is_action_pressed("ui-up") && !Global.paused:
		position.y -= SPEED*delta
	if Input.is_action_pressed("ui-down") && !Global.paused:
		position.y += SPEED*delta

		
		
	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	
	move_and_slide()
	

	
	pass # Replace with function body.




