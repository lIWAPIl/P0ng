extends KinematicBody2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var pos = Vector2()


# Called when the node enters the scene tree for the first time.
func _ready():
	pos = position


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	follow_cursor()

func follow_cursor():
	pos = get_global_mouse_position()
	position.y = pos.y
