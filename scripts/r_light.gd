extends Area2D

@onready var r_buttons = %right_buttons
@onready var hum = $light_hum
@onready var button_sound = %right_button

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if !r_buttons.r_light:
		hum.stop()
	pass

func _input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT and event.pressed:
		button_sound.play()
		if !r_buttons.r_light and !r_buttons.r_door:
			r_buttons.frame = 1
			r_buttons.r_light = true
			hum.play()
		elif r_buttons.r_light:
			r_buttons.r_light = false
			r_buttons.frame = 0
			hum.stop()
