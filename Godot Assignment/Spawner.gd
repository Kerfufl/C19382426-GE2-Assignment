extends Spatial

export var feath:PackedScene
# Declare member variables here. Examples:
# var a = 2
# var b = "text"
export var bitCount = []
export var featherLimit = 3

export var featherScale = 4

# Called when the node enters the scene tree for the first time.
func _ready():
	
	pass # Replace with function body.


#Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Input.is_action_just_pressed("jump_force") and len(bitCount) > 0:
		print("do something")
		var f = bitCount.pop_back()
		get_node("../..").remove_child(f)
	pass


func spawn():
	var fe = feath.instance()
	fe.global_transform.origin = global_transform.origin
	fe.scale = Vector3(1*featherScale,1*featherScale,1*featherScale) 
	get_node("../..").call_deferred("add_child",fe)
	bitCount.push_back(fe)
	print(bitCount)


func _on_Timer_timeout():
	if len(bitCount) < featherLimit:
		spawn()
	pass # Replace with function body.
