extends Area2D

@onready var l_buttons = %left_buttons
@onready var hum = $light_hum
@onready var button_sound = %left_button

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if !l_buttons.l_light:
		hum.stop()
	pass

func _input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT and event.pressed:
		button_sound.play()
		if !l_buttons.l_light and !l_buttons.l_door:
			l_buttons.frame = 1
			l_buttons.l_light = true
			hum.play()
		elif l_buttons.l_light:
			l_buttons.l_light = false
			l_buttons.frame = 0
			hum.stop()
