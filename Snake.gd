extends Node2D

var tale = preload("res://SnakeTale.tscn")
var eat = preload("res://Eat.tscn")


signal spawn_eat

func get_input():
	if Input.is_action_just_pressed("ui_accept"):
		create_new_tale($SnakeHead.position)

func _process(delta):
	get_input()
	move_tale()

func move_tale():
	for i in range(1, get_child_count()):
		var prev = get_child(i - 1)
		var curr = get_child(i)
		curr.old_position = curr.position 
		if i - 1 == 0:
			curr.velocity = curr.move_and_slide((prev.position - curr.position).normalized() * $SnakeHead.speed * 1.8)
		else:
			curr.velocity = curr.move_and_slide((prev.old_position - curr.position).normalized() * $SnakeHead.speed * 1.8)
			
		

func create_new_tale(old):
	var new_tale = tale.instance()
	
	new_tale.old_position = old	
	new_tale.position = position
	add_child(new_tale)
	new_tale.index = get_child_count() - 1
	var prev = get_child(get_child_count() - 2)
	var curr = get_child(get_child_count() - 1)
	if get_child_count() == 2:
		curr.position = prev.position  - prev.velocity * 0.1
	else:
		curr.position = prev.position  - prev.velocity * 1.3
	$SnakeHead/Camera2D.zoom = $SnakeHead/Camera2D.zoom + $SnakeHead/Sprite.texture.get_size() * 0.0001


func _on_SnakeHead_catch_the_eat(fruit):
	if fruit["length"] > 0:
		for i in fruit["length"]:
			create_new_tale(get_child(get_child_count() - 1).position)
	elif fruit["length"] < 0:
		for i in -1 * fruit["length"]:
			get_child(get_child_count() -1 - i).queue_free()
			
			
	emit_signal("spawn_eat")
	print(fruit)
	


func _on_Area2D_body_entered(body):
	if body.index:
		for i in range(body.index, get_child_count()):
			get_child(i).queue_free()
