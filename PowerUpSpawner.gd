extends Node2D


var pObj = preload("res://SpeedPowerUp.tscn")

# Called when the node enters the scene tree for the first time.
func _ready():
	randomize()


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Timer_timeout():
	var PowerUp = pObj.instance()
	get_parent().add_child(PowerUp)
	var upcoming_wait_time = randi() % 5 + 1 
	print("upcoming_wait_time: ", upcoming_wait_time)
	$Timer.wait_time = upcoming_wait_time
