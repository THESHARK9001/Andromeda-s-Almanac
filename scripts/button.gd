extends Area2D

var fanToggle = 1
@onready var sound = $fan_sound
@onready var switch = $switch

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	sound.play()
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func _input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT and event.pressed and fanToggle == 0:
		fanToggle = 1
		sound.play()
		switch.play()
	elif event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT and event.pressed and fanToggle == 1:
		fanToggle = 0
		sound.stop()
		switch.play()
