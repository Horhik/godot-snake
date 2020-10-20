extends Node2D

var eat = preload("res://Eat.tscn")
# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	rand_spawn()
	rand_spawn()
	rand_spawn()
	rand_spawn()
	
	


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Snake_spawn_eat():
	rand_spawn()
	
	
func rand_spawn():
	var new_eat = eat.instance()
	new_eat.generate()
	var rng = RandomNumberGenerator.new()
	rng.randomize()
	var rand_pos = Vector2(rng.randf_range(-800	, 800), rng.randf_range(-800, 800))
	new_eat.position = rand_pos
	add_child(new_eat)
