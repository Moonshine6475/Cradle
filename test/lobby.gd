extends Node2D

@onready var menu = preload("res://pause_menu.tscn").instantiate()
# Called when the node enters the scene tree for the first time.
func _ready():
	var player = load("res://player.tscn").instantiate()
	add_child(player)
	player.position = Vector2(255, -120)
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Input.is_action_just_pressed("escape") && !Global.paused:
		Global.paused = true
		add_child(menu)
		menu.position = Vector2(236, -140)
		
	pass

