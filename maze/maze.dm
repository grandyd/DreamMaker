mob
	name="player"
	icon ='player.dmi'
mob
	Login()
		name="Спозоранку"
		world<<"Приветствую тебя, [usr]"
		..()
mob
	verb
		say(msg as text)
			set name="Говорить"
			view() << "[usr] говорит: '[msg]'"
		set_name_mob(N as text)
			set name="Изменить имя кому то"
			set desc="Вы измените имя другому персонажу"
			set src in view(1)
			name=N
		set_name(N as text)
			set name="Изменить своё имя"
			set desc="(\"новое имя\") Измените своё имя"
			name=N
		ghost()
			set name="Призрак"
			set desc="Вы сможете ходить сквозь стены"
			if(density)
				world<<"Теперь вы способны ходить сквозь стены"
				density=0
			else
				world<<"Теперь вы не можете ходить сквозь стены"
				density=1
		smile()
			set name="Смеяться"
			view()<<"[usr] расплывается в улыбке"
		cry()
			set name="Рыдать"
			view()<<"Его сердце разрывается от горя"
		hug()
			set name="Обнять"
			set src in view()
			view()<<"[usr] обнял [src]"
		whisper(M as mob in view(1),msg as text)
			set name="Шептать"
			M<<"[usr] шепчет вам: '[msg]'"
			usr<<"Вы прошептали [M]:'[msg]'"
		wink()
			set src in view()
			view() << "[usr] winks at [src]."
		kill(M as mob)
			set desc="Эта кнопочка убивает моба"
			..()
			del M
mob
	Ian
		name="Ян"
		icon='animal.dmi'
		icon_state="corgi"
		wink()
			..()
			usr<<"[src] шепчет, 'drow cigam!'"

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
