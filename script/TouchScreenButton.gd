extends TouchScreenButton

func _on_TouchScreenButton_pressed():
	position.x += 1
	#emit_signal("pressed")

func _on_TouchScreenButton_released():
	position.x -= 1
