extends Spatial


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var anim =get_child(1)

# Called when the node enters the scene tree for the first time.
func _ready():
	anim.play("Take 001")
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if anim.current_animation != "Take 001":
		anim.play("Take 001")
