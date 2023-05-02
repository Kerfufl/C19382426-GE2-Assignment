class_name HuntState extends State

export var mute = false

var boid
var shootTime = false
var spawn: Node
var s: Node
var audio:Node
func _ready():
	boid = get_parent()
	spawn =get_node("../Spawner")
	s = ShootState.new()
	audio = get_node("../Audio")
	pass # Replace with function body.
	
func get_class():
	return "Hunt State"

func _enter():
	print("Entering hunt state")
	boid.set_enabled_all(false)
	boid.get_node("NoiseWander").enabled = true
	boid.get_node("Avoidance").enabled = true
	boid.get_node("Constrain").enabled = true
	if not mute:
		audio.stream= load("res://The Gensokyo The Gods Loved.mp3")
		audio.play()
	pass

func _exit():
	pass
	
func _think():
	if shootTime:
		boid.get_node("StateMachine").change_state(s)
		pass
 


func _on_Area_body_entered(body):
	#if body
	#print(body)
	#print("Time to die")
	if len(spawn.bitCount) == spawn.featherLimit:
		#print(body.get_parent().boids)
		s.target = body
		s.mute = mute
		shootTime = true
#	else:
#		print("Not enough ammo")
	pass # Replace with function body.
