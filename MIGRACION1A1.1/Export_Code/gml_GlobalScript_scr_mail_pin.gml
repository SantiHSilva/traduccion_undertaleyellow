function scr_mail_pin(argument0) //gml_Script_scr_mail_pin
{
    var first_val = ds_list_find_value(global.mail_list, 0)
    if (global.mail_pinned == 0 || argument0 != first_val)
    {
        global.mail_pinned = 1
        var old_pos = ds_list_find_index(global.mail_list, argument0)
        ds_list_delete(global.mail_list, old_pos)
        ds_list_sort(global.mail_list, 1)
        ds_list_insert(global.mail_list, 0, argument0)
        audio_play_sound(snd_mail_pin, 1, false)
    }
    else
    {
        global.mail_pinned = 0
        ds_list_sort(global.mail_list, 1)
        audio_play_sound(snd_mail_unpin, 1, false)
    }
}

