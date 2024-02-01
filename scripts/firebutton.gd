extends Sprite2D

@onready var parent = $".."
#func _process(delta):
	#pass
	#if pressing:
	#	parent.ispressed = true
	

@onready var fireButton = $"../Button"
var isFiring = false

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	# Check if the fire button is pressed
	if fireButton.is_pressed():
		parent.isFiring = true
		print("Fire is ON")
	else:
		parent.isFiring = false
		print("Fire is IDLE")
#func _on_button_button_up():
	#pressing = true# Replace with function body.


#func _on_button_button_down():
	#pressing = false # Replace with function body.


func _on_button_pressed():
	pass # Replace with function body.
