extends AudioStreamPlayer2D

@onready var honk1 = preload("res://audio/honk1.mp3")
@onready var honk2 = preload("res://audio/honk2.mp3")
@onready var honk3 = preload("res://audio/honk3.mp3")
@onready var honk4 = preload("res://audio/honk4.mp3")
@onready var honk5 = preload("res://audio/honk5.mp3")
@onready var honk6 = preload("res://audio/honk6.mp3")
@onready var honk7 = preload("res://audio/honk7.mp3")

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func _sound(sound: AudioStreamMP3):
	stream = sound
	play()
	
func _play(num):
	match num:
		1:_sound(honk1)
		2:_sound(honk2)
		3:_sound(honk3)
		4:_sound(honk4)
		5:_sound(honk5)
		6:_sound(honk6)
		7:_sound(honk7)
