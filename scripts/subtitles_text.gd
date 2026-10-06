extends Label


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	_night1call()


func _night1call():
	await get_tree().create_timer(18.2).timeout
	text = "Hey hey! Welcome to your first day at Galaxy Park!"
	await get_tree().create_timer(3.25).timeout
	text = "I hope to see you here in the near future in person, and that you don't end up like the other guys..."
	await get_tree().create_timer(6.8).timeout
	text = "Well, uh. First things first, I guess I'll get you started up on the basics to help you get settled down in the park"
	await get_tree().create_timer(8).timeout
	text = "See those bright red buttons on either side of your office? Uh, those are for each door."
	await get_tree().create_timer(7.5).timeout
	text = "Uh, the left button of course for the left door, the right button for the right door."
	await get_tree().create_timer(6.5).timeout
	text = "Uh, and right below is your light buttons. Again, left button for the left light, right button for the right light"
	await get_tree().create_timer(11.5).timeout
	text = "Uh, please keep in mind that the light can not be on while you have your doors closed..."
	await get_tree().create_timer(7).timeout
	text = "It's... a stupid thing, I know... We can't really afford to have both on at the same time because the doors do take up quite a bit of power over time..."
	await get_tree().create_timer(12).timeout
	text = "Uh, next thing is the security cameras. I mean, after all you ARE a security guard here... that's what you applied for..."
	await get_tree().create_timer(11).timeout
	text = "Uh. Those cameras are right in front of you, you can bring them up right now if you want!"
	await get_tree().create_timer(7).timeout
	text = "Uh... That's all the information I cam come up with you for right now... Good luck! You'll need it..."
