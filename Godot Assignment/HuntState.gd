extends State
var boid

var shootTime = false

func _ready():
	boid = get_parent()
	pass # Replace with function body.
	
func get_class():
	return "Hunt State"

func _enter():
	print("Entering hunt state")
	boid.set_enabled_all(false)
	boid.get_node("NoiseWander").enabled = true
	boid.get_node("Avoidance").enabled = true
	boid.get_node("Constrain").enabled = true
	pass

func _exit():
	pass
	
func _think():
	pass
 


func _on_Area_body_entered(body):
	#if body
	print(body)
	#print("Time to die")
	shootTime = true
	pass # Replace with function body.
