extends Area2D
# Right Wall
func _on_wall_area_entered(area):
	if area.name == "Ball":
		print("P1 Scored")
		#oops, ball went out of game place, reset
		area.P1Score()
