obj
    torch
        icon='torch.dmi'
        icon_state="fired"
        luminosity=3
obj/torch/verb/get()
    set src in usr.loc
    loc=usr
obj/torch/verb/drop()
    set src in usr
    loc=usr.loc
obj/torch/verb/summon()
    set src in oview()
    loc=usr.loc