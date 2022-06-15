extends RigidBody2D

export var fastest = Vector2()
export var slowest = Vector2()


func _ready():
	contact_monitor = true
	contacts_reported = 1
	set_bounce(1)


func _process(delta):
	set_velocity()
	#print(linear_velocity)


func set_velocity():
	#Limit max speed
	if linear_velocity.x > fastest.x:
		linear_velocity.x = fastest.x
	if linear_velocity.y > fastest.y:
		linear_velocity.y = fastest.y
	
	#??Don't let the x linear_velocity get too low
	#??Make it so it dosn't get stuck bounceing up and down


func _on_Ball_body_entered(body):
	if body == $"../Player":
		linear_velocity.x -= 100
	elif body == $"../Paddle":
		linear_velocity.x += 100
	elif body == $"../Node/Left":
		print("You won") #Do someting
	elif body == $"../Node/Right":
		print("You lost")#Do something
