extends TextureButton
@onready var returnB = get_node(".")
@onready var playButton = get_node("../playButton")
@onready var newGameButton = get_node("../newGameButton")
@onready var loadGameButton = get_node("../loadGameButton")
@onready var settingsButton = get_node("../settingsButton")
@onready var quit = get_node("../quitButton")
# Called when the node enters the scene tree for the first time.
func _ready():
	returnB.hide()
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_button_up():
	returnB.hide()
	loadGameButton.hide()
	newGameButton.hide()
	playButton.show()
	quit.show()
	settingsButton.show()
	pass # Replace with function body.
