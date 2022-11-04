extends CanvasLayer


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	$P1Score.text = "Player 1 : " + str(Global.P1Score)
	$P2Score.text = str(Global.P2Score) + " : Player 2"





