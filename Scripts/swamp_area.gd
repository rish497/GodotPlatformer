extends Area2D


var entered = false

func _on_body_entered(body: PhysicsBody2D):
		print("Swamp World")
		entered = true
		get_tree().change_scene_to_file("res://Scenes/Swamp World.tscn")
