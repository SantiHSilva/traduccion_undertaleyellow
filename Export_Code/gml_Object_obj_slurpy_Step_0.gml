depth = (-y)
if (scr_interact() && keyboard_multicheck_pressed(0))
{
    if (global.snowdin_flag[3] == 0)
    {
        scr_text()
        talk = 1
        if (global.geno_complete[2] || global.route == 3)
        {
            with (msg)
            {
                message[0] = "* Yo descongelo a los que huyen#  de algo."
                message[1] = "* Quiero seguirlos...#  pero no puedo."
                message[2] = "* Estoy asustado..."
            }
        }
        with (msg)
        {
            portrait = 0
            message[0] = "* ¡Oye! ¡Tú!"
            message[1] = "* ¿Puedes ayudarme con esto?"
            message[2] = "* He estado afquí por dos howas."
            message[3] = "* Trefs perros se acercaron#  y me ofbligaron a lamerlo."
            message[4] = "* Debido al frdío,#  ¡ahora estoy aftascado!"
            message[5] = "* Ni nadre también me#  dijo que volviera a diempo#  para cormer."
            message[6] = "* Pwo fasvort ayuame."
            other.slurpy_menu_open = 1
            global.snowdin_flag[3] = 1
        }
    }
    else
        slurpy_menu_open = 1
}
if ((!global.dialogue_open) && slurpy_menu_open == 1)
{
    instance_create(x, y, obj_item_use_menu)
    scr_cutscene_start()
    slurpy_menu_open = 0
}
if (waiter == 1 && (!global.dialogue_open))
{
    instance_create((x + 6), (y - 5), part_smoke_slurpy)
    audio_play_sound(snd_puzzle_icemelt, 20, false)
    waiter = 2
    timer = 30
}
if (waiter == 4 && (!instance_exists(obj_dialogue)))
{
    if place_free(x, (y - 10))
    {
        vspeed = -3
        sprite_index = spr_slurpy_up_yellow
    }
    else
    {
        hspeed = -3
        sprite_index = spr_slurpy_left_yellow
    }
    image_speed = 0.2
    waiter = 5
}
if (waiter == 5)
{
    with (msg)
    {
        if (message_current == 1)
            other.talk = 1
        message[1] = "* Oye, ¿ehwat lotco?"
        message[2] = "* ¡Efto eh mu chatiemte!"
        message[3] = "* Necesito algo caliente,#  ¡pero no TAN caliente!\n"
    }
    if (!global.dialogue_open)
    {
        scr_cutscene_end()
        waiter = 0
    }
}
if (timer > 0)
    timer--
else if (timer != -1)
{
    if (waiter == 2)
    {
        sprite_index = spr_slurpy_retract_yellow
        instance_create(x, y, obj_lamppost)
        image_speed = 0.2
        waiter = 3
        timer = -1
    }
    else if (waiter == 3)
    {
        scr_text()
        with (msg)
        {
            portrait = 0
            message[0] = "* ¡Por fin!#  Me he liberado."
            message[1] = "* ¡No puedo agradecértelo lo suficiente!#  ¡Eres un samaritano maravilloso!"
            message[2] = "* Toma, una muestra de#  mi gratitud."
            message[3] = "* (Obtuviste un Silver Scarf.)"
            message[4] = "* ¡Tejido por mi tía con#  abundante pasión!"
            message[5] = "* Que te caliente la piel#  y el ALMA, buen amigo."
            message[6] = "* ¡Tengo que volver a casa#  cuanto antes! ¡Mamá ya#  debe estar preocupada!"
            message[7] = "* ¡Hasta la vista!"
            if (message_current == 3)
            {
                if (!(scr_item_exists_check("Silver Scarf")))
                {
                    scr_item_remove("Lukewarm Coffee")
                    scr_item("Silver Scarf")
                    other.talk = 0
                }
            }
            else if (message_current == 4)
            {
                other.timer = -1
                other.talk = 1
                other.waiter = 4
            }
            else
                other.talk = 1
        }
    }
}
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
if (global.item_used_overworld != undefined)
{
    scr_text()
    with (msg)
    {
        switch global.item_used_overworld
        {
            case "Lukewarm Coffee":
                message[0] = "* (Viertes el café caliente#  en el palo. El hielo#  empieza a derretirse.)"
                other.waiter = 1
                scr_item_remove("Lukewarm Coffee")
                break
            case "Hndw Coffee":
                other.talk = 0
                message[0] = "* (Sacas la taza de#  café.)"
                other.waiter = 5
                break
            default:
                message[0] = "* Nal vez efe café waliente#  libwere ni pobre lengua."
                other.talk = 1
                other.waiter = 0
                global.cutscene = false
                break
        }

    }
    if (!global.dialogue_open)
        global.item_used_overworld = undefined
}
