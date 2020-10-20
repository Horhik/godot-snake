extends KinematicBody2D
export (int) var speed = 200
var _max_speed = 1800

var length = 0
var velocity = Vector2()

signal catch_the_eat(fruit)

enum DirectionState {
	ToTop,
	ToRight,
	ToBottom,
	ToLeft
}

var direction;
var prev_dir;

func get_input():

	if Input.is_action_just_pressed('ui_right') and (direction != DirectionState.ToLeft):
		prev_dir = direction
		direction = DirectionState.ToRight
	if Input.is_action_just_pressed( 'ui_left') and (direction != DirectionState.ToRight):
		prev_dir = direction
		direction = DirectionState.ToLeft
	if Input.is_action_just_pressed('ui_down') and (direction != DirectionState.ToTop):
		prev_dir = direction
		direction = DirectionState.ToBottom
	if Input.is_action_just_pressed('ui_up') and (direction != DirectionState.ToBottom):
		prev_dir = direction
		direction = DirectionState.ToTop
		
	
func change_rot(d):
	rotation = d
	
func rotate_head(): 
	if direction != prev_dir:
		match direction:
			DirectionState.ToBottom: change_rot(PI)
			DirectionState.ToLeft: change_rot(-PI/2)
			DirectionState.ToTop: change_rot(0)
			DirectionState.ToRight: change_rot(PI/2)

func moving():
	velocity = Vector2()
	get_input()
	rotate_head()
	if direction == DirectionState.ToBottom:
		velocity.y += 1
	if direction == DirectionState.ToRight:
		velocity.x += 1
	if direction == DirectionState.ToLeft:
		velocity.x -= 1
	if direction == DirectionState.ToTop:
		velocity.y -= 1
	
	velocity = velocity.normalized() * speed
	
func _physics_process(delta):
	moving()
	velocity = move_and_slide(velocity)

func eat(fruit):
	emit_signal("catch_the_eat", fruit)
	if fruit["speed"]:
		speed += fruit["speed"]	
	else:
		speed += 5
# func move_tale(pos):
# 	var count = $TaleParts.get_child_count()

# 	for i in count:
# 		if i == 0:
# 			$TaleParts.get_child(0).old_position = $TaleParts.get_child(0).position
			
# 			$TaleParts.get_child(0).position = pos
			
# 		else:
# 			$TaleParts.get_child(i).old_position = $TaleParts.get_child(i).position
# 			$TaleParts.get_child(i).position = $TaleParts.get_child(i - 1).old_position
# 			#print($TaleParts.get_child(i).position)# = $TaleParts.get_child(i - 2).position
# 			#$TaleParts.get_child(i - 1).position = global_position


