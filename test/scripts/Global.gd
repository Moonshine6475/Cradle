extends Node

var newPlayer = true
var paused = false
var currencyHeld = 0
# Called when the node enters the scene tree for the first time.
func _ready():
	var loaded_resource= load("res://player/player_stats.tres")
	ResourceSaver.save(loaded_resource, "res://player/player_stats_save.tres")
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
