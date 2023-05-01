class_name ShootState extends State
var boid
var spawn: Node

func _ready():
	boid = get_parent()
	spawn =get_node("../Spawner")
	pass # Replace with function body.
	
func get_class():
	return "Shoot State"

func _enter():
	print("Entering shoot state")
	boid.set_enabled_all(false)
	boid.pause = true
	
#	boid.get_node("NoiseWander").enabled = true
#	boid.get_node("Avoidance").enabled = true
#	boid.get_node("Constrain").enabled = true
	for i in spawn.bitCount:
		i.set_enabled_all(false)
		#boid.
	
	pass

func _exit():
	pass
	
func _think():
	pass
 

# Called when the node enters the scene tree for the first time.

