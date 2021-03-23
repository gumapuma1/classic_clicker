extends Label

export var hp = 10
signal enemy_dead()


func _process(delta):
	#проверка хп врага
	if (hp < 1):
		text = "Dead enemy"
		emit_signal('enemy_dead')
		#+1 к score, от которого зависит хп нового врага
		G.score += 1
		#добавляем хп врагу, чтобы цикл проверки хп не повторился
		#и прячем его с экрана
		hp = (G.war_dmg + G.dmg) * 200
		hide()
	#изменяем количество хп, отображаемого над врагом
	get_node("enemy_hp").text = str(hp)


#две функции с получения урона - пассивного и от клика
func _on_Timer_timeout():
	hp -= G.war_dmg

func _on_TouchScreenButton_pressed():
	hp -= G.dmg
