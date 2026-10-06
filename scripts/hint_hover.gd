extends Control

@onready var cam_state = %camera
@onready var hover = $hover
var hints = true

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	hover.hide()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	cam_state = %camera.cam_state
	if cam_state and hints:
		hover.show()
	elif !cam_state and hints:
		hover.hide()
	elif !hints:
		hover.hide()
	if Input.is_action_just_pressed("hint"):
		hints = false
