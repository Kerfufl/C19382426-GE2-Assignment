extends Spatial


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var b =get_child(1)

# Called when the node enters the scene tree for the first time.
func _ready():
	b.play("Take 001")
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if b.current_animation != "Take 001":
		b.play("Take 001")
