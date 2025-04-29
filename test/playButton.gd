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
	newGameButton = get_node("../newGameButton")
	loadGameButton = get_node("../loadGameButton")
	settingsButton = get_node("../settingsButton")
	quit = get_node("../quitButton")
	back = get_node("../returnButton")
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	pass


func _on_button_up():
	settingsButton.hide()
	quit.hide()
	playButton.hide()
	newGameButton.show()
	loadGameButton.show()
	back.show()
	pass # Replace with function body.
