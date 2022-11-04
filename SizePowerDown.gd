extends Area2D


const windowSize = Vector2(640,400)
var location = Vector2()


## Called when the node enters the scene tree for the first time.
func _ready():
	randomize()
	location.x = rand_range(75, (windowSize.x - 75))
	location.y = rand_range(1, windowSize.y)
	self.position = location
	$Sprite.play("Start")
	
#	randomize()
#	location.x = rand_range(1, windowSize.x)
#	location.y = rand_range(1, windowSize.y)
#	self.position = location
	

func _on_Timer_timeout():
	get_node("../Ball").Reset()
	$Sprite.play("End")
	

func _on_SpeedPowerUp_area_entered(area):
	if area.name == "Ball":
		area.size = Vector2(0.1,0.1)
		$Sprite.play("End")
		$Timer.start(3)

func _on_Sprite_animation_finished():
	if $Sprite.animation == "Start":
		$Sprite.play("Middle")
	if $Sprite.animation == "End":
		queue_free()
