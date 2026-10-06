extends Node

@onready var menu_scene = load("res://scenes/menu.tscn")
var subtitles = false

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if Input.is_action_just_pressed("exit"):
		get_tree().quit()
	if Input.is_action_just_pressed("reset"):
		get_tree().change_scene_to_packed(menu_scene)
	
