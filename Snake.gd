extends Node2D

var tale = preload("res://SnakeTale.tscn")
var eat = preload("res://Eat.tscn")

var tale_period = 0.01
var time = 0

signal spawn_eat

func get_input():
	if Input.is_action_just_pressed("ui_accept"):
		print("hellp")
		create_new_tale($SnakeHead.position)

func _process(delta):
	get_input()
	time += delta
	if (time > tale_period):
		move_tale()
		time = 0

func move_tale():
	for i in range(1, get_child_count()):
		var prev = get_child(i - 1)
		var curr = get_child(i)
		curr.old_position = curr.position 
		if i - 1 == 0:
			curr.velocity = curr.move_and_slide((prev.position - curr.position).normalized() * $SnakeHead.speed * 1.5)
		else:
			curr.velocity = curr.move_and_slide((prev.old_position - curr.position).normalized() * $SnakeHead.speed * 1.5)
			
		

func create_new_tale(old):
	var new_tale = tale.instance()
	
	new_tale.old_position = old	
	new_tale.position = position
	add_child(new_tale)
		
	var prev = get_child(get_child_count() - 2)
	var curr = get_child(get_child_count() - 1)
	if get_child_count() == 2:
		curr.position = prev.position  - prev.velocity * 0.1
	else:
		curr.position = prev.position  - prev.velocity
	$SnakeHead/Camera2D.zoom = $SnakeHead/Camera2D.zoom + $SnakeHead/Sprite.texture.get_size() * 0.0001


func _on_SnakeHead_catch_the_eat():
	create_new_tale($SnakeHead.position)
	$SnakeHead.speed += 10
	emit_signal("spawn_eat")
	emit_signal("spawn_eat")
	
