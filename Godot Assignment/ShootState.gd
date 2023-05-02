class_name ShootState extends State
var boid
var spawn: Node
var target:Node


var audio:Node
func _ready():
	boid = get_parent()
	spawn =get_node("../Spawner")
	audio = get_node("../Audio")
	
	pass # Replace with function body.
	
func get_class():
	return "Shoot State"

func _enter():
	print("Entering shoot state")
	audio.stream= load("res://Solar Sect of Mystic Wisdom ~ Nuclear Fusion.mp3")
	audio.play()
	boid.set_enabled_all(false)
	boid.pause = true
#	boid.get_node("NoiseWander").enabled = true
#	boid.get_node("Avoidance").enabled = true
#	boid.get_node("Constrain").enabled = true
	for i in spawn.bitCount:
		i.set_enabled_all(false)
		i.pause = !i.pause
		
		var pur = i.get_node("Pursue")
		i.max_speed = 20
		i.max_force = 15
		pur.enemy_boid = target
		pur.enabled = true
		#k.enemy_boid = 
		#boid.
	
	pass

func _exit():
	pass
	
func _think():
	pass
 

# Called when the node enters the scene tree for the first time.



#func _on_Area_body_entered(body):
#	if target == null:
#		target = body
#		#print("Target is "+str(target))
#	pass # Replace with function body.
