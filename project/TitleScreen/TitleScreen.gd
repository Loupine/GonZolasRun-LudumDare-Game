extends Control


onready var play_button := get_node("PlayButton")


func _process(_delta:float)-> void:
	if play_button.pressed:
		# warning-ignore:return_value_discarded
		get_tree().change_scene("res://World/World.tscn")
