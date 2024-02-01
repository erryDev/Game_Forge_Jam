extends Sprite2D

@onready var joystick = $"../../Camera2D/joystick"
var bullet =preload("res://scenes/bullet.tscn")
@onready var fire = $"../../firebutton"
@onready var gun = $".."
@onready var marker = $Node2D/Marker2D
var bulletspeed = 200
var velo = Vector2()
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	# Get the global position of the mouse
	pass
	
func _physics_process(delta):
	global_position = gun.global_position
	var target_position = joystick.posVector
	var angle = target_position.angle()
	rotation = angle
	
	
	if fire.isFiring:
		var bullet_instance = bullet.instantiate()
		
		#$Node2D.look_at()
		get_tree().get_root().add_child(bullet_instance)
		bullet_instance.transform = marker.global_transform
		bullet_instance.rotation_degrees = marker.global_rotation
		#bullet_instance.velo =bullet_instance.transform.x * bulletspeed
		#bullet_instance.position = gun.global_position#marker.global_position()
		#bullet.velocity =
		#bullet_instance.position = position + Vector2(0, 10).rotated(angle)
		
		#bullet_instance.apply_force(Vector2(0,0),Vector2(bulletspeed,0).rotated(rotation))
		
	
	# Set the rotation of the sprite to point towards the joystick direction
	

