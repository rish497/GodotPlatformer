extends Node2D
@onready var animated_sprite_2d: AnimatedSprite2D = $AnimatedSprite2D
@onready var collision_shape_2d: CollisionShape2D = $CollisionShape2D
@onready var area_2d: Area2D = $"."
var entered = false

func _on_body_entered(body: Node2D) -> void:
	Global.cpart = +1
	queue_free()
		
