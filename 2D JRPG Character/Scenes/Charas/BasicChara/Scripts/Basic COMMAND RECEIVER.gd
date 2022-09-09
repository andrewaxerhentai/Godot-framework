extends Node
export(NodePath) var FSMPath
onready var FSM = get_node(FSMPath)

export(String) var LEFT
export(String) var RIGHT
export(String) var UP
export(String) var DOWN

func GetInput():
	var direction = Vector2.ZERO
	
	if Input.is_action_pressed(LEFT) and !Input.is_action_pressed(RIGHT):
		direction.x = -1
	if Input.is_action_pressed(RIGHT) and !Input.is_action_pressed(LEFT):
		direction.x = 1
	if Input.is_action_pressed(UP) and !Input.is_action_pressed(DOWN):
		direction.y = -1
	if Input.is_action_pressed(DOWN) and !Input.is_action_pressed(UP):
		direction.y = 1
		
	if direction != Vector2.ZERO:
		return direction
