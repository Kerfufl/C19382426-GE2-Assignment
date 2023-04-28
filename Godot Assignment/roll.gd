extends RigidBody

onready var rg = get_node(".")
export var speed = 5
# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	var space_state = get_world().direct_space_state
	var test = space_state.intersect_ray(rg.global_transform.origin,Vector3(0,-1,0))
	print(test)
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	
	var bruh =rg.linear_velocity
	var space_state = get_world().direct_space_state
	var down = space_state.intersect_ray(rg.global_transform.origin,Vector3(0,-1,0))
	rg.add_central_force(Vector3(0,0,100) * - speed*delta)
	#print(down)
	DebugDraw.draw_line(rg.transform.origin, Vector3(0,0,100)*-speed, Color.chartreuse)
	DebugDraw.draw_line(rg.transform.origin, Vector3(rg.transform.origin.x,rg.transform.origin.y-1,rg.transform.origin.z), Color.beige)
	#pass
