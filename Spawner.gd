extends Node2D

var packed_scene = [
	preload("res://SpeedPowerDown.tscn"),
	preload("res://SpeedPowerUp.tscn"),
	preload("res://SizePowerUp.tscn"),
	preload("res://SizePowerDown.tscn")
	
]

func _ready():
	randomize()

func _on_Timer_timeout():
	var x = randi() % packed_scene.size()
	var PowerUp = packed_scene[x].instance()
	get_parent().add_child(PowerUp)
	var upcoming_wait_time = randi() % 5 + 1 
#	print("upcoming_wait_time: ", upcoming_wait_time)
	$Timer.wait_time = upcoming_wait_time
