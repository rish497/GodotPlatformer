extends Node2D
@onready var tile_map: TileMap = $TileMap

func _ready():
	if Global.cpart == 0:
		tile_map.visible = false
	
	if Global.cpart >= 1:
		tile_map.visible = true
		Global.counter = 1
