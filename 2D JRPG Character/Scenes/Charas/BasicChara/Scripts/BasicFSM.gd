extends Node

export(NodePath) var RootPath
onready var Root = get_node(RootPath)
export(NodePath) var AnimTreePath
onready var AnimTree = get_node(AnimTreePath)
onready var state_machine = AnimTree.get("parameters/playback")
export(NodePath) var LeftRightAnimPath
onready var LeftRightAnim = get_node(LeftRightAnimPath)

#Old left and right value stored, saves an entire sprite scaling after the check
onready var IsLeft = 1

#Direction vector of the sprite facing angle
onready var direction = Vector2.DOWN

#The current State
onready var current = $IDLE

func _process(delta):
	current.Update(delta)
	
func _physics_process(delta):
	current.Physics(delta)

func CHANGESTATE(state):
	match(state):
		"IDLE" : current = $IDLE
		"WALK" : 
			if Root.DoesWalk:
				current =  $WALK
