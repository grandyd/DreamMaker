turf
	floor
		icon ='floor.dmi'
	wall
		icon ='wall.dmi'
		density=1
	start
		icon ='start.dmi'
mob
	icon ='player.dmi'
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
			world<<"\\his сердце разрывается от горя"
world
	fps = 20		// 25 frames per second
	icon_size = 32	// 32x32 icon size by default

	view = 4		// show up to 6 tiles outward from center (13x13 view)
