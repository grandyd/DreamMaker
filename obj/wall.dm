obj
	wall
		icon ='icons/wall.dmi'
		density=1
		opacity=1
		icon_state="wall"

		secret_wall
			desc="Выглядит как обычная стена"
			name="wall"
			icon='icons/wall.dmi'
			density=1
			verb
				use()
					if(icon_state=="wall")
						set src=view(1)
						density=0
						icon_state="fwall_open"
					else
						set src=view(1)
						density=1
						icon_state="wall"
	start
		icon ='start.dmi'
	window
		desc="Похоже стекло сделано из стекла"
		icon='window.dmi'
		opacity=0
		density=1