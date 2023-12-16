script_execute(gml_Script_scr_depth, 0, 0, 0, 0, 0)
if (instance_exists(obj_dialogue) && talk == 1)
{
    if (obj_dialogue.cutoff == string_length(obj_dialogue.message[obj_dialogue.message_current]))
    {
        image_speed = 0
        image_index = 0
    }
    else
        image_speed = 0.2
}
if (keyboard_multicheck_pressed(0) && scr_interact() == 1)
{
    scr_text()
    talk = 1
    switch global.sideNpc[2]
    {
        case 0:
            with (msg)
            {
                portrait = 0
                sndfnt = 99
                message[0] = "* Ahora puedo cumplir mi#  sueño de abrir una parada#  de abrazos gratis."
                message[1] = "* Veré las caras#  sonrientes de todo el#  mundo. "
            }
            global.sideNpc[2] = 1
            break
        case 1:
            with (msg)
            {
                portrait = 0
                sndfnt = 99
                message[0] = "* ¡Ten cuidado con Dalv!#  Ya deberías haber recibido#  un gran abrazo. "
                message[1] = "* Todos necesitamos un#  buen abrazo de vez en cuando. "
                message[2] = "* ¡Especialmente los#  grandes deprimidos como Dalv!"
            }
            global.sideNpc[2] = 2
            break
        case 2:
            with (msg)
            {
                portrait = 0
                sndfnt = 99
                message[0] = "* ¡Si alguna vez te conviertes#  en un gran deprimido como Dalv,#  llama a mi nuevo negocio!"
                message[1] = "* ¡Los abrazos eternos de Sweet Corn!"
                message[2] = "* ¡No, en serio!#  ¡Dame tu teléfono y#  te daré el número!"
            }
            global.sideNpc[2] = 3
            break
        case 3:
            with (msg)
            {
                portrait = 0
                sndfnt = 99
                message[0] = "* ¡Los abrazos hacen girar el mundo!"
            }
            break
    }

}
if ((!instance_exists(obj_dialogue)) && talk == 1)
    talk = 0
