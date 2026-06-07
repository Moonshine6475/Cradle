extends TextureButton

var playButton
var newGameButton
var loadGameButton
var settingsButton
var quit
var back
# Called when the node enters the scene tree for the first time.
func _ready():
	playButton = get_node(".")
	settingsButton = get_node("../settingsButton")
	quit = get_node("../quitButton")
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	pass
