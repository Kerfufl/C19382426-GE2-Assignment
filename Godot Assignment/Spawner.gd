extends Spatial

export var feath:PackedScene
# Declare member variables here. Examples:
# var a = 2
# var b = "text"
export var bitCount = []

# Called when the node enters the scene tree for the first time.
func _ready():
	var fe = feath.instance()
	get_node("../..").call_deferred("add_child",fe)
	bitCount.push_back(fe)
	print(bitCount)
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
