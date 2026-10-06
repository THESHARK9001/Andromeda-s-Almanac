extends AudioStreamPlayer2D

const ambience1 = preload("res://audio/random_ambience1.mp3")
const ambience2 = preload("res://audio/random_ambience2.mp3")

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	repeat()
	
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func _sound(sound: AudioStreamMP3):
	stream = sound
	play()

func _play():
	match randi_range(1, 500):
		1:
			volume_db = -35
			_sound(ambience1)
			print("sound1")
		2:
			volume_db = -25
			_sound(ambience2)
			print("sound2")
	repeat()
	
func repeat():
	await get_tree().create_timer(200).timeout
	_play()
