extends Sprite2D

var image = Image.load_from_file("res://title.png")
var texture = ImageTexture.create_from_image(image)



# Called when the node enters the scene tree for the first time.
func _ready():
	set_image(image)
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	
	pass
