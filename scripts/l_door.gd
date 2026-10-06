extends Area2D

@onready var l_buttons = %left_buttons
@onready var open = $door_sound_open
@onready var close = $door_sound_close
@onready var button_sound = %left_button

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func _input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT and event.pressed and !l_buttons.l_door:
		button_sound.play()
		l_buttons.l_door = true
		l_buttons.frame = 2
		if l_buttons.l_light:
			l_buttons.l_light = false
		close.play()
	elif event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT and event.pressed and l_buttons.l_door:
		button_sound.play()
		l_buttons.l_door = false
		l_buttons.frame = 0
		open.play()
