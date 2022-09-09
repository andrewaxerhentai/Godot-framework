extends "res://Scenes/Charas/BasicChara/Scripts/BasicSTATE.gd"

func Update(delta):
	.Update(delta)
	var dir = FSM.get_node("COMMAND RECEIVER").GetInput()
	if dir != null:
		FSM.direction = dir
		FSM.CHANGESTATE("WALK")
	else:
		FSM.CHANGESTATE("IDLE")
	.CheckXMirror()

func Physics(delta):
	FSM.state_machine.travel("IDLE")
	if FSM.direction != null:
		FSM.AnimTree.set("parameters/IDLE/blend_position", FSM.direction)
