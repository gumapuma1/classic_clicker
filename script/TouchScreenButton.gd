extends TouchScreenButton

func _on_TouchScreenButton_pressed():
	G.score+=G.dmg
	position.x += 1


func _on_TouchScreenButton_released():
	position.x -= 1
