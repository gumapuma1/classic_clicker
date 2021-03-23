extends Label

var hp = 10

func _process(delta):
	if (G.score >= hp):
		text = "Dead enemy"
