extends "res://Scenes/Charas/BasicChara/Scripts/BasicIDLE.gd"

func Physics(delta):
	FSM.state_machine.travel("WALK")
	if FSM.direction != null:
		FSM.AnimTree.set("parameters/WALK/blend_position", FSM.direction)
	
	if !FSM.Root.DoesStaticWalk:
		var speed = FSM.direction * FSM.Root.walk_speed * delta
		FSM.Root.move_and_collide(speed)
