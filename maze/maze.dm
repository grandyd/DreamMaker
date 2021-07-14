mob
	name="player"
	icon ='player.dmi'
mob
	name="Ian"
	icon='ian.dmi'
mob
	Login()
		luminosity=1
		name="Спозоранку"
		world<<"Приветствую тебя, [usr]"
		loc=locate(/turf/start)
		..()
mob
	verb
		ghost()
			desc="Вы сможете ходить сквозь стены"
			set name="Призрак"
			if(density)
				world<<"Теперь вы способны ходить сквозь стены"
				density=0
			else
				world<<"Теперь вы не можете ходить сквозь стены"
				density=1
		smile()
			set name="Смеяться"
			world<<"[usr] расплывается в улыбке"
		cry()
			set name="Рыдать"
			world<<"/his сердце разрывается от горя"
world
	fps = 20		// 25 frames per second
	icon_size = 32	// 32x32 icon size by default

	view = 4		// show up to 6 tiles outward from center (13x13 view)
