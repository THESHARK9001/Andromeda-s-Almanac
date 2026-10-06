extends Control

@onready var cam_state = %camera
@onready var cameras = $cameras
@onready var fan = $fan
@onready var phone = $phone
@onready var office = %office
@onready var x = %hint_x
var hints = true

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	cameras.show()
	fan.show()
	phone.show()

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	position = office.position
	cam_state = %camera.cam_state
	if cam_state and hints:
		cameras.hide()
		fan.hide()
		phone.hide()
	elif !cam_state and hints:
		cameras.show()
		fan.show()
		phone.show()
	elif !hints:
		cameras.hide()
		fan.hide()
		phone.hide()
	if Input.is_action_just_pressed("hint"):
		hints = false
		x.hide()
