extends State
var boid

func _ready():
	boid = get_parent()
	pass # Replace with function body.
	
func get_class():
	return "Hunt State"

func _enter():
	print("Entering attack state")
	boid.set_enabled_all(false)
	boid.get_node("NoiseWander").enabled = true
	boid.get_node("Avoidance").enabled = true
	boid.get_node("Constrain").enabled = true
	pass

func _exit():
	pass
	
func _think():
	pass
 

# Called when the node enters the scene tree for the first time.

