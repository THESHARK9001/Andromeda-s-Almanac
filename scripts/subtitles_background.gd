extends ColorRect

@onready var text = %subtitles_text

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	text.position.x = 1920/2 - size.x/2
	position.x = text.position.x - 5
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	text.position.x = 1920/2 - size.x/2
	position.x = text.position.x - 5
	size.y = text.size.y
	size.x = text.size.x + 10
