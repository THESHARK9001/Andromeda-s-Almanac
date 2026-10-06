extends Sprite2D

var cam_state = false
@onready var cam_hum = $camsound
@onready var office = %office
@onready var cams = %cams

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	hide()
	cams.hide()
	office.show()
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if cam_state:
		show()
		cams.show()
		office.hide()
	elif !cam_state:
		hide()
		cams.hide()
		office.show()
