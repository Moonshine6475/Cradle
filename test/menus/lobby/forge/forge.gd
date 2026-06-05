extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _input(event):
	if event.is_action_released("escape") or event.is_action_released("interact"):
		get_viewport().set_input_as_handled()
		queue_free()
	pass
