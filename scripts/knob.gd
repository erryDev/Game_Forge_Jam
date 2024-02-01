extends Sprite2D

var pressing = false
@onready var parent = $".."
@export var maxLength = 50
@export var deadzone = 5
# Called when the node enters the scene tree for the first time.
func _ready():
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if pressing:
		if get_global_mouse_position().distance_to(parent.global_position) <= maxLength:
			global_position = get_global_mouse_position()
		else:
			var angle = parent.global_position.angle_to_point(get_global_mouse_position())
			global_position.x =parent.global_position.x + cos(angle)*maxLength
			global_position.y =parent.global_position.y + sin(angle)*maxLength
		calculateVector()
	else :
		global_position = lerp(global_position,parent.global_position,delta*10)
		parent.posVector = Vector2(0,0)
	#print(parent.posVector)
func calculateVector():
	if abs(global_position.x - parent.global_position.x)>= deadzone:
		parent.posVector.x = ( global_position.x - parent.global_position.x)/maxLength
	#print(parent.posVector.x)
	
	if abs(global_position.y - parent.global_position.y) >= deadzone:
		parent.posVector.y = (global_position.y - parent.global_position.y)/maxLength
	

func _on_button_button_up():
	pressing = false # Replace with function body.


func _on_button_button_down():
	pressing = true # Replace with function body.
