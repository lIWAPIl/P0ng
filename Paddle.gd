extends KinematicBody2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var pos = Vector2()
onready var ball = get_node("../Ball")


# Called when the node enters the scene tree for the first time.
func _ready():
	pass



# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	follow_ball()

func follow_ball():
	position.y = ball.position.y
