if (keyboard_multicheck_pressed(0) && scr_interact() == 1 && waiter == 0 && (!instance_exists(obj_dialogue)))
    waiter = 1
if (waiter == 1)
{
    scr_text()
    with (msg)
    {
        portrait = 0
        sndfnt = 99
        if (global.route == 3)
        {
            message[0] = "* (Una gran roca con un#  símbolo grabado en ella)."
            other.waiter++
        }
        message[0] = "* (Parece que hay algo#  interesante en esta roca.)"
        message[1] = "* (¿Tocarlo?)"
        ch[1] = "Sí"
        ch[2] = "No"
        ch_msg = 1
        if (outcome == 1 && message_current == 1)
        {
            message[2] = "* (Era sólo un poco de#  suciedad en la nieve.)"
            message[3] = "* (Te limpias la mano#  en una sospechosa marca#  en la pared de roca.)"
            other.waiter++
        }
        else if (outcome == 2 && message_current == 1)
        {
            message[2] = "* (Requiere una autodisciplina#  considerable, pero ignoras#  la roca interesante.)"
            other.waiter++
        }
    }
}
if (waiter == 2 && (!instance_exists(obj_dialogue)))
    waiter = 0
