extends Area2D

var phonecall = true
@onready var call1 = $call1
@onready var button = $phone_hangup
var beep = false

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	call1.play()
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if call1.playing:
		phonecall = true
	elif !call1.playing:
		phonecall = false
	if !beep and !phonecall:
		button.play()
		beep = true
		Globals.subtitles = false
	pass

func _input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT and phonecall:
		call1.stop()
