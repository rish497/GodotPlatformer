extends Area2D
var entered = false

func _on_body_entered(body: PhysicsBody2D):
	print("Wow")
	entered = true
	Global.tick = 3
	print(Global.tick)
	get_tree().change_scene_to_file("res://Scenes/world_2.tscn")
