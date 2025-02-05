extends Area2D
var entered = false

func _on_body_entered(body: PhysicsBody2D):
	print("Wow")
	print(Global.tick)
	entered = true
	Global.tick = 1
	get_tree().change_scene_to_file("res://Scenes/world_2.tscn")
