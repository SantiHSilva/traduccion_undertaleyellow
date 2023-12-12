if scr_timer()
{
    scr_cutscene_start()
    scr_text()
    with (msg)
    {
        sndfnt = 97
        message[0] = "* ¿Hola?"
        message[1] = "* ¿Sigues presente,#  pequeño?"
        message[2] = "* ¡Voy a rescatarte!#  ¡Ven!"
        prt[0] = 343
        prt[1] = 340
        prt[2] = 343
    }
    if (!global.dialogue_open)
    {
        instance_create(160, 145, obj_darkruins_01_rope)
        instance_destroy()
    }
}
if (global.flag[23] == 0 && instance_exists(obj_transition))
{
    if (obj_transition.newRoom != 14)
        return;
    global.flag[23] = 2
    instance_destroy()
}
