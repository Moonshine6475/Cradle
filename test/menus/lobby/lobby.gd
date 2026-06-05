extends Node2D

@onready var menu = preload("res://menus/pause_menu.tscn").instantiate()

# Called when the node enters the scene tree for the first time.
func _ready():
	var player = load("res://player/player.tscn").instantiate()
	
	player.position = Vector2(255, -120)
	add_child(player)
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _input(event):
	print(Global.paused)
	if event.is_action_released("escape") && !Global.paused:
		get_viewport().set_input_as_handled()
		Global.paused = true
		add_child(menu)
		menu.position = Vector2(236, -140)
		
	pass



# Replace with function body.
