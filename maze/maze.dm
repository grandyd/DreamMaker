turf
	floor
		icon ='floor.dmi'
	wall
		icon ='wall.dmi'
		density=1
		opacity=1

		secret_wall
			name="wall"
			icon='wall.dmi'
			density=0
	start
		icon ='start.dmi'
	window
		icon='window.dmi'
		opacity=0
		density=1
mob
	name="player"
	icon ='player.dmi'
mob
	name="Ian"
	icon='ian.dmi'
mob
	Login()
		name="Спозоранку"
		world<<"Приветствую тебя, [usr]"
		loc=locate(/turf/start)
		..()
mob
	verb
		smile()
			world<<"[usr] расплывается в улыбке"
		cry()
			world<<"/his сердце разрывается от горя"
world
	fps = 20		// 25 frames per second
	icon_size = 32	// 32x32 icon size by default

	view = 4		// show up to 6 tiles outward from center (13x13 view)
