extends Area2D
class_name Interact

# Called when the node enters the scene tree for the first time.
func _ready():
	# Connect the signals via code so you don't have to manually click them in the editor for every object
	body_entered.connect(_on_body_entered)
	body_exited.connect(_on_body_exited)

func _on_body_entered(body):
	# Look inside the body (our player/cat) for your [X] OPEN button path
	if body.has_node("Sprite2D/Interact"):
		body.get_node("Sprite2D/Interact").show()
		# Hand the player a reference to THIS specific object instance
		body.set_meta("current_interactable", self)

func _on_body_exited(body):
	if body.has_node("Sprite2D/Interact"):
		body.get_node("Sprite2D/Interact").hide()
		# Remove the reference when walking away
		if body.has_meta("current_interactable"):
			body.remove_meta("current_interactable")

# Sub-classes (Forge, Skill Tree) will completely replace this function's contents
func interact(player: CharacterBody2D):
	pass
