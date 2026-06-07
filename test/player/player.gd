extends CharacterBody2D

@export var stats : Entity
@onready var cat_sprite = $Sprite2D
const SPEED = 250.0

func _ready() -> void:
	stats.curhealth = stats.maxhealth

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
func _unhandled_input(event):
	# When the interaction key is pressed (e.g., your X key)
	if event.is_action_released("interact"):
		if has_meta("current_interactable"):
			var target_zone = get_meta("current_interactable")
			
			if is_instance_valid(target_zone):
				# Godot automatically runs the CORRECT interact() function 
				# depending on whether target_zone is a Forge or a Skill Tree!
				target_zone.interact(self)


func _on_spawn_animation_finished():
	cat_sprite.show()
	pass # Replace with function body.


func _on_interact_button_up():
	if has_meta("current_interactable"):
		var target_zone = get_meta("current_interactable")
		
		if is_instance_valid(target_zone):
			target_zone.interact(self)
 # Replace with function body.
