extends Area2D

@onready var scene = load("res://scenes/office_scene.tscn")
@onready var play = %play
@onready var hover = %ui_hover

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func _input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT:
		UiClick.play()
		get_tree().change_scene_to_packed(scene)

func _mouse_enter() -> void:
	hover.play()
	play.text = ">PLAY<"

func _mouse_exit() -> void:
	play.text = "PLAY"
