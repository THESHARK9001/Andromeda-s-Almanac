extends CanvasLayer


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	if Globals.subtitles:
		show()
	elif !Globals.subtitles:
		hide()

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if Globals.subtitles:
		show()
	elif !Globals.subtitles:
		hide()
