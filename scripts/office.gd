extends Sprite2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	buzz.play()
	pass # Replace with function body.

@onready var buzz = $light_buzz
@onready var cam_state = %camera

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta: float) -> void:
	cam_state = %camera.cam_state
	if position.x < 0 and !cam_state:
			if get_viewport().get_mouse_position().x < 480:
				position.x += 2
			if get_viewport().get_mouse_position().x < 240:
				position.x += 5
	if position.x > -280 and !cam_state:
		if get_viewport().get_mouse_position().x > 1440:
			position.x -= 2
		if get_viewport().get_mouse_position().x > 1680:
			position.x -= 5
	if position.x >= 0:
		position.x = 0
	elif position.x <= -320:
		position.x = -320
	pass
