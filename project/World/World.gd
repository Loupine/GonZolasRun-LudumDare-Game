extends Node2D


onready var player := get_node("Player")
onready var player_spawn_points := get_node("PlayerSpawnPoints")

func _ready()-> void:
	var random_generator := RandomNumberGenerator.new()
	random_generator.randomize()
	var position_number := random_generator.randi_range(0, 4)
	player.set_position(player_spawn_points.get_child(position_number).get_position())
