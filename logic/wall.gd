extends Area2D
# Left Wall
func _on_wall_area_entered(area):
	if area.name == "Ball":
		print("P2 Scored")
		#oops, ball went out of game place, reset
		area.P2Score()
