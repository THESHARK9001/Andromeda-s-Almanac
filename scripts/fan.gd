extends AnimatedSprite2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	play("on")
	pass # Replace with function body.

@onready var button = $fan_button
var curFrame = 0

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if button.fanToggle == 0:
		stop()
		animation = "off"
		frame = curFrame
	if button.fanToggle == 1:
		curFrame = frame
		play("on")
