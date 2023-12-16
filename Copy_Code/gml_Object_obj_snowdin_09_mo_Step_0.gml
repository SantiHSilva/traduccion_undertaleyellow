for (var i = 0; i <= (array_length_1d(timer) - 1); i++)
{
    if (timer[i] > 0)
        timer[i]--
    else if (timer[i] != -1)
    {
        if (i == 0)
        {
            with (msg)
            {
                if (message_current == 1)
                    instance_destroy()
                else
                {
                    message_current += 1
                    cutoff = 0
                    other.timer[0] = 60
                    return;
                }
            }
        }
        if (i == 1)
            audio_play_sound(snd_mo_throw, 20, false)
        if (i == 2)
            path_start(pt_mo_kiosk, 2, path_action_stop, 0)
        if (i == 3)
            waiter = 9
        if (i == 4)
        {
            waiter = 7
            scr_text()
            with (msg)
            {
                portrait = 0
                message[0] = "* Much as I'd love to keep#  sellin' pops, I'm all out!"
                message[1] = "* Until next time!"
            }
        }
        timer[i] = -1
    }
}
if (path_speed != 0)
{
    image_speed = 0.2
    switch (direction div 90)
    {
        case 0:
            sprite_index = spr_mo_right_yellow
            break
        case 1:
            sprite_index = spr_mo_up_yellow
            break
        case 2:
            sprite_index = spr_mo_left_yellow
            break
        case 3:
            sprite_index = spr_mo_down_yellow
            break
    }

}
if instance_exists(obj_dialogue)
{
    if (obj_dialogue.cutoff == string_length(obj_dialogue.message[obj_dialogue.message_current]))
    {
        image_speed = 0
        image_index = 0
    }
    else
        image_speed = 0.2
}
depth = 10
if (global.extra_flag[1] == 1 && global.extra_flag[2] == 1 && global.extra_flag[3] == 1)
    global.snowdin_flag[5] = 2
if (scr_interact() && keyboard_multicheck_pressed(0) && waiter == 0)
{
    waiter = 5
    scr_cutscene_start()
}
if (slide == 1)
{
    slide = 2
    hsp = -4.8
}
if (slide == 2)
{
    if (hsp < 0)
        hsp += 0.1
    else
    {
        sprite_index = spr_mo_kick_yellow
        image_speed = 0.33
        if (floor(image_index) == 3)
        {
            obj_snowdin_09_mo_stool.slide = 1
            slide = 3
        }
    }
}
x += hsp
if (waiter == 1)
{
    scr_text()
    with (msg)
    {
        portrait = 0
        position = 0
        color = 1
        col_modif[0] = make_color_rgb(72, 132, 212)
        message[0] = "* ¡Bam!"
        message[1] = "* ¿Quién soy yo? Nadie#  importante. Ya sabes."
        message[2] = "* ¡EL MEJOR VENDEDOR#  DE LA HISTORIA!"
        message[3] = "* ¡WAM! ¡Yo soy Mo!"
        message_col[3][0] = "              Mo "
        message[4] = "* De todas formas..."
        message[5] = "* El hecho de que hayas intentado#  hacerte con esta taza sólo#  puede significar una cosa."
        message[6] = "* Buscas algo delicioso#  para dar en el blanco,#  ¿verdad?"
        message[7] = "* ¡Claro que sí!#  Conozco a los de tu tipo."
        message[8] = "* Entonces,#  ¿quieres esta bebida?"
        ch_msg = 8
        ch[1] = "Sí"
        ch[2] = "No"
        if (outcome == 1 && message_current == 8)
        {
            message[9] = "* ¡No es verdad!"
            other.waiter = 2
        }
        if (outcome == 2 && message_current == 8)
        {
            message[9] = "* Pues claro que no."
            message[10] = "* Tú y yo, estamos en#  la misma página aquí."
            message[11] = "* ¿Esto? Qué asco.#  Nadie quiere eso."
            other.waiter = 2
        }
    }
}
if (waiter == 2 && (!instance_exists(obj_dialogue)))
{
    sprite_index = spr_mo_pour2_yellow
    image_speed = 0.35
    timer[1] = 10
    waiter = -1
}
if (waiter == 3)
{
    scr_text()
    with (msg)
    {
        portrait = 0
        position = 0
        message[0] = "* ¿Líquidos?#  ¡Tan de la temporada pasada!"
        message[1] = "* ¿Sólidos? ¡PAH!#  ¡Temporada anterior!"
        message[2] = "* ¿Quieres ser fresco y#  revolucionario? ¡Tengo#  lo último!"
        message[3] = "* ¡Sólidos que ANTES eran#  líquidos!"
        message[4] = "* ...Y, ya sabes, no he estado#  sentado en el bosque durante#  tres semanas."
        message[5] = "* ¡He inventado la próxima#  gran cosa!"
        message[6] = "* ¡Por el increíble precio#  de 15 de oro, puedes tener tu#  propio chocolate caliente Pop!"
        message[7] = "* Antes era el viejo y aburrido#  chocolate caliente, ¡pero ahora está#  congelado a la temperatura perfecta!"
        message[8] = "* ¿He despertado ya tu#  interés?"
        ch_msg = 8
        ch[1] = "Vendido"
        ch[2] = "No Gracias"
        if (outcome == 1 && message_current == 8)
        {
            message[9] = "* ¡Sabía que lo serías!#  ¡Maldición, soy bueno!"
            message[10] = "* Vayamos al grano."
            other.waiter = 4
        }
        if (outcome == 2 && message_current == 8)
        {
            message[9] = "* ¿Seguro que no quieres uno?"
            message[10] = "* ¡Tienes que mantenerte al día,#  amigo! Aquí, tengo una idea."
            message[11] = "* Te dejaré verlos gratis.#  Llámalo 'especial de vacaciones.'"
            message[12] = "* No recibo muchos envíos,#  así que solo tengo uno#  de cada uno."
            message[13] = "* Vayamos al grano."
            other.waiter = 4
        }
    }
}
if (waiter == 4 && (!instance_exists(obj_dialogue)))
{
    sprite_index = spr_mo_snap_yellow
    image_speed = 0.35
    audio_play_sound(snd_mo_snap, 20, false)
    waiter = 5
}
if (waiter == 5 && path_position == 1)
{
    path_speed = 0
    sprite_index = spr_mo_down_talk_yellow
    image_index = 0
    image_speed = 0
    scr_text()
    with (msg)
    {
        dialogue_is_minishop = 1
        portrait = 0
        position = 0
        ch_msg = 0
        ch[1] = "Hot Pop"
        ch[2] = "Lukewarm Pop"
        ch[3] = "Cold Pop"
        ch[4] = "Cancelar"
        if (global.extra_flag[1] == 1)
            ch[1] = "-VENDIDO-"
        if (global.extra_flag[2] == 1)
            ch[2] = "-VENDIDO-"
        if (global.extra_flag[3] == 1)
            ch[3] = "-VENDIDO-"
        message[0] = "* Esto es lo que tengo.#  (15 de ORO)"
        if (global.snowdin_flag[5] == 1)
        {
            ch_msg = 2
            message[0] = "* ¿No pudiste mantenerte#  alejado?"
            message[1] = "* Well-BAM-Take your pick."
            message[2] = "* Here's what I got. (15 G)"
        }
        switch outcome
        {
            case 1:
            case 2:
            case 3:
                message = 0
                cutoff = 0
                message_current = 0
                ch_msg = -1
                if (global.extra_flag[outcome] == 0)
                {
                    if (global.player_gold >= 15 && scr_inventory_check_space())
                    {
                        message[1] = "* Great choice."
                        message[2] = "* You enjoy that Pop, buddy."
                        if (outcome == 1)
                            scr_item("Hot Pop")
                        if (outcome == 2)
                            scr_item("Lukewarm Pop")
                        if (outcome == 3)
                            scr_item("Cold Pop")
                        audio_play_sound(snd_shop_purchase, 1, false)
                        global.player_gold -= 15
                        global.extra_flag[outcome] = 1
                    }
                    else if (global.player_gold < 15)
                        message[1] = "* Sorry, buddy. I'm gonna#  need more G than that."
                    else if (!scr_inventory_check_space())
                    {
                        message[1] = "* Uh-oh, looks like you've got no#  space for this item."
                        message[2] = "* Come back when you've made some#  more room."
                    }
                }
                else
                    message[1] = "* What a popular item! I wish I#  could sell you more, but I'm#  fresh out."
                other.waiter = 6
                break
            case 4:
                message = 0
                cutoff = 0
                message_current = 0
                ch_msg = -1
                message[1] = "* Hey, what are ya doing there!"
                message[2] = "* That ain't no Pop!"
                message[3] = "* You leavin' me? Not interested#  in my wares?"
                message[4] = "* Do I not have your favorite#  temperature?"
                message[5] = "* Oh, I see. You need some time#  to think about it."
                message[6] = "* Well, I'll always be here for#  your gol-"
                message[7] = "* ...Business."
                message[8] = "* I said business."
                other.waiter = 6
        }

    }
}
if (waiter == 6 && (!instance_exists(obj_dialogue)))
{
    if (global.snowdin_flag[5] == 2)
    {
        if (timer[4] == -1)
            timer[4] = 30
        return;
    }
    if scr_camera_move(obj_pl.x, obj_pl.y, 2)
    {
        waiter = 0
        __view_set((9 << 0), 0, 1031)
        global.snowdin_flag[5] = 1
        scr_cutscene_end()
    }
}
if (waiter == 7 && (!instance_exists(obj_dialogue)))
{
    sprite_index = spr_mo_snap_yellow
    image_index = 0
    image_speed = 0.35
    timer[3] = 50
    waiter = 8
}
if (waiter == 9)
{
    scr_text()
    with (msg)
    {
        portrait = 0
        position = 0
        message[0] = "* Mo out!"
    }
    waiter = 10
}
if (waiter == 10 && (!instance_exists(obj_dialogue)))
{
    vspeed = -2
    sprite_index = spr_mo_up_yellow
    image_speed = 0.35
    if (y < -20)
    {
        global.snowdin_flag[5] = 2
        scr_radio_restart()
        scr_cutscene_end()
        instance_destroy()
    }
}
if (global.snowdin_flag[5] == 1)
{
    solid = 1
    depth = (-y)
}
