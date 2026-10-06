extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	DiscordRPC.app_id = 1556527839002632214
	#print("Discord working: " + str(DiscordRPC.get_is_discord_working()))
	DiscordRPC.details = "V" + ProjectSettings.get_setting("application/config/version") + " PRE-ALPHA"
	DiscordRPC.large_image_text = "V " + ProjectSettings.get_setting("application/config/version") + " PRE-ALPHA"
	DiscordRPC.start_timestamp = int(Time.get_unix_time_from_system())
	DiscordRPC.refresh() 
