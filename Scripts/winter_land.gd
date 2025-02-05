extends Area2D

@onready var sprite_2d: Sprite2D = $Sprite2D
var entered = false
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	sprite_2d.visible = false

func _process(delta: float) -> void:
	if Global.tick == 2:
		sprite_2d.visible = true  # Show sprite when tick is 2
	else:
		sprite_2d.visible = false  # Hide sprite otherwise

		
func _on_body_entered(body: PhysicsBody2D):
	if Global.tick == 2:
		print("Swamp World")
		entered = true
		get_tree().change_scene_to_file("res://Scenes/WinterLan.tscn")
