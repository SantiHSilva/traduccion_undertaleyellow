var item_number = 8
var i = 1
while (i <= 8)
{
    if (global.item_slot[i] == "Nothing")
    {
        item_number = (i - 1)
        break
    }
    else
    {
        i++
        continue
    }
}
if global.down_keyp
{
    if (item_selected < item_number)
        item_selected += 1
    else
        item_selected = 1
    audio_play_sound(snd_mainmenu_select, 1, false)
}
if global.up_keyp
{
    if (item_selected > 1)
        item_selected -= 1
    else if (item_number > 0)
        item_selected = item_number
    audio_play_sound(snd_mainmenu_select, 1, false)
}
if keyboard_multicheck_pressed(0)
{
    global.item_used_overworld = global.item_slot[item_selected]
    audio_play_sound(snd_confirm, 1, false)
    instance_destroy()
}
if keyboard_multicheck_pressed(1)
{
    audio_play_sound(snd_fail, 1, false)
    scr_cutscene_end()
    instance_destroy()
}
