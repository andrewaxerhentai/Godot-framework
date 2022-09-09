extends Node

export(NodePath) var FSMPath
onready var FSM = get_node(FSMPath)

func Update(delta):
	pass
	
func Physics(delta):
	pass

func CheckXMirror():
	if FSM.IsLeft != int(FSM.direction.x):
		FSM.IsLeft = int(FSM.direction.x)
		if FSM.IsLeft >= 0:
			FSM.LeftRightAnim.play("Right")
		else:
			FSM.LeftRightAnim.play("Left")
