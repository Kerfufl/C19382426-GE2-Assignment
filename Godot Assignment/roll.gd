extends RigidBody

onready var rg = get_node(".")
# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	
	var bruh =rg.linear_velocity
	rg.add_central_force(bruh)
	DebugDraw.draw_line(rg.global_transform.origin, bruh, Color.chartreuse)
	#pass
