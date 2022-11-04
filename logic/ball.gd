extends Area2D

export var DEFAULT_SPEED = 100

var _speed = DEFAULT_SPEED
var direction = Vector2.LEFT


onready var _initial_pos = position

func _ready():
	randomize()


func _process(delta):
	$Sprite.scale = Global.spriteSize
	$Collision.shape.radius = Global.colSize
	_speed += delta * 2
	position += _speed * delta * direction

func P2Score():
	direction = Vector2.LEFT
	position = _initial_pos
	_speed = DEFAULT_SPEED
	Global.P2Score += 1
	
func P1Score():
	direction = Vector2.RIGHT
	position = _initial_pos
	_speed = DEFAULT_SPEED
	Global.P1Score += 1

func Reset():
	_speed = DEFAULT_SPEED
	if sign(self.scale.x) == 1:
		self.scale = Vector2(1,1)
	else:
		self.scale = Vector2(-1,1)



