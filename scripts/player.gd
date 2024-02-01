extends CharacterBody2D

#var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")
var gravity = 100
var speed = 300.0
@onready var joystick = $"../Camera2D/joystick"
@onready var fire = $"../firebutton"
var bullet =preload("res://scenes/bullet.tscn")
func _process(_delta):
	velocity.y+= gravity*_delta
func _physics_process(_delta):
	#if not is_on_floor():
	
	print (velocity)
	
	#if not fire.ispressed:
		#pass#print(0)
		
	
	var direction = joystick.posVector
	if( direction.x < 0 ):
		velocity.x = -speed*-direction.x
		$gun.flip_v = true
		#print(1)
	if direction.x > 0 :
		velocity.x = speed*direction.x
		$gun.flip_v =false
	if direction.x == 0 :
		velocity.x=0
	#velocity.y = 0
	print(velocity,direction)

	move_and_slide()
#func flip(flipped):
	#if flipped:
		#scale.x = -abs(scale.x)
		#isflipped = true
	#else:
		#scale.x = abs(scale.x)
		#isflipped = false
		
		
	
	
