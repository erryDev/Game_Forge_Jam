extends CharacterBody2D

#var velocity = Vector2(1,0)
var speed = 3000
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta):
	velocity.x+=(delta*speed)#velocity = speed*delta
	move_and_slide()
	#pass
