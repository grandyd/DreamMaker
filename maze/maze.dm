mob
	name="player"
	icon ='player.dmi'
mob
	name="Ian"
	icon='animal.dmi'
	icon_state = "corgi"
mob
	Login()
		name="Спозоранку"
		world<<"Приветствую тебя, [usr]"
		..()
mob
	verb
		ghost()
			set name="Призрак"
			desc="Вы сможете ходить сквозь стены"
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
		hug()
			set name="Обнять"
			set src in view()
			world<<"[usr] обнял [src]"
obj/torch/verb
	use()
		set name="Использовать"
		set src = view(1)
		if(luminosity==3)
			luminosity=0
			icon_state="torch"

		else
			luminosity=3
			icon_state="fired"


world
	fps = 20		// 25 frames per second
	icon_size = 32	// 32x32 icon size by default

	view = 4		// show up to 6 tiles outward from center (13x13 view)
