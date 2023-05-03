extends Node

var school: Node
var noise
# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	school = get_node("../../School")
	noise = load("res://DeathNoise.gd")
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Area_body_entered(body):
	if body != null and body.get_node("DeathSound") != null:
		#print(body.get_node("DeathSound"))
		#Sound won't play due to timing, timing too messy for current implementation
		#body.get_node("DeathSound").play()
		var n = AudioStreamPlayer3D.new()

		n.stream = load("res://Death_Sound.mp3")
		n.set_script(noise)
		get_tree().get_root().add_child(n)
		n.global_transform.origin = body.global_transform.origin		
		school.boids.erase(body)
		#body.set_enabled_all(false)
		body.queue_free()
		get_parent().queue_free() 
	pass # Replace with function body.
