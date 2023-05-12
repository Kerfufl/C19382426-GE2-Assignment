extends RigidBody

onready var rg = get_node(".")
export var speed = 5

# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	var lr = Input.get_axis("force_left", "force_right")
	var fb = Input.get_axis("force_forward", "force_back")
	var space_state = get_world().direct_space_state
	var res = space_state.intersect_ray(transform.origin,transform.origin + Vector3(0,-1,0)*5,[self])
	
	#add_central_force(Vector3(0,0,100) * -speed*delta)
	
	if abs(lr) > 0:
		add_central_force(Vector3(0,0,100*-lr * speed*delta))
	if abs(fb) > 0:
		add_central_force(Vector3(100 * fb*speed*delta,0,0))
	
	if Input.is_action_just_pressed("jump_force"):
		add_central_force(Vector3(0,100,0))
	
	
		
		
	#print(down)
	#DebugDraw.draw_line(rg.transform.origin, Vector3(1,0,0), Color.chartreuse)
	DebugDraw.draw_line(transform.origin, transform.origin + Vector3(0,-1,0), Color.beige)
	if !res.empty():
		DebugDraw.draw_line(res.position, res.position+res.normal*2, Color.aqua)
		DebugDraw.draw_line(res.position+Vector3.UP, res.position+Vector3.UP+ (res.normal.cross(global_transform.basis.x))*2, Color.magenta)
		if Input.is_action_pressed("normal_force"):
			add_central_force(res.normal.cross(global_transform.basis.x)*10)
	#pass
	

func _input(event):
#	if event is InputEventKey and event.scancode == KEY_CONTROL and event.pressed :
#		add_central_force(Vector3(0,100*5,0))
	pass
