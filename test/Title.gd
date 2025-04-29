extends Node2D

# Called when the node enters the scene tree for the first time.
func _ready():
	show()
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_new_game_button_button_up():
	get_tree().change_scene_to_file("res://char_create_screen.tscn")
	 # Replace with function body.


func _on_load_game_button_button_up():
	if not Global.newPlayer:
		get_tree().change_scene_to_file("res://lobby.tscn")
	pass # Replace with function body.
