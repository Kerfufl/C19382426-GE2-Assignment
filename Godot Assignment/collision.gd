extends Node

var school: Node
# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	school = get_node("../../School")
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Area_body_entered(body):
	if body != null and body.get_node("DeathSound") != null:
		#print(body.get_node("DeathSound"))
		body.get_node("DeathSound").play()
		
		#print("Die")
		school.boids.erase(body)
		body.set_enabled_all(false)
		body.queue_free()
		get_parent().queue_free() 
	pass # Replace with function body.
