extends Node2D


var score := 0

onready var coin := preload("res://Coin/Coin.tscn")
onready var enemy := preload("res://Enemy/Enemy.tscn")
onready var player := get_node("Player")
onready var player_spawn_points := get_node("PlayerSpawnPoints")


func _ready()-> void:
	var spawn_point := player_spawn_points.get_child(_generate_random_number(0, 4))
	player.set_position(spawn_point.get_position())


func _generate_random_number(minimum:int, maximum:int)-> int:
	var random_generator := RandomNumberGenerator.new()
	random_generator.randomize()
	var position_number := random_generator.randi_range(minimum, maximum)
	return position_number


func _spawn_new_coin()-> void:
	var x_position := _generate_random_number(-2000, 2500)
	var y_position := _generate_random_number(-1500, 1500)
	var active_coin : KinematicBody2D = coin.instance()
	active_coin.position.x = x_position
	active_coin.position.y = y_position
	add_child(active_coin)
	# warning-ignore:return_value_discarded
	active_coin.connect("collided", self, "_on_Coin_collided")


func _spawn_new_enemy()-> void:
	var x_position := _generate_random_number(-2000, 2500)
	var y_position := _generate_random_number(-1500, 1500)
	var active_enemy : KinematicBody2D = enemy.instance()
	active_enemy.position.x = x_position
	active_enemy.position.y = y_position
	add_child(active_enemy)
	active_enemy.call("set_player", get_node("Player"))


func _on_Timer_timeout()-> void:
	_spawn_new_coin()
	_spawn_new_enemy()


func _on_Coin_collided()-> void:
	score += 100
