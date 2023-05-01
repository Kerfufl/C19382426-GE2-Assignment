extends Spatial

export var feath:PackedScene
# Declare member variables here. Examples:
# var a = 2
# var b = "text"
export var bitCount = []

# Called when the node enters the scene tree for the first time.
func _ready():
	
	pass # Replace with function body.


#Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func spawn():
	var fe = feath.instance()
	get_node("../..").call_deferred("add_child",fe)
	bitCount.push_back(fe)
	print(bitCount)


func _on_Timer_timeout():
	if len(bitCount) < 3:
		spawn()
	pass # Replace with function body.
