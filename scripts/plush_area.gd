extends Area2D

@onready var honk = $honk_sound
@onready var animation = $plush_animation

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
	
func _input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT and event.pressed:
		animation.stop()
		honk._play(randi_range(1, 7))
		animation.play("squish")
