xs = 1
ys = 1
sizex = 1
sizey = 1
enlarge = 0
image_index = 0
image_speed = 0
selection = 1
stats_open = 0
choice[1] = "ITEM"
choice[2] = "STATS"
choice[3] = "MAIL"
choice[4] = "NOTHING"
choice[5] = "NOTHING"
item_selected = 1
item_inspect = 0
inventory_open = 0
item_drop = 0
mail_selected = 0
mail_inspect = 0
mail_check = 0
mail_open = 0
mail_offset = 0
mail_display_count = 8
audio_play_sound(snd_mainmenu_select, 1, false)
selection_max = 3
if (global.player_has_satchel == 1)
{
    var i = 1
    while (i <= 5)
    {
        if (choice[i] == "NOTHING")
        {
            choice[i] = "BAG"
            break
        }
        else
        {
            i++
            continue
        }
    }
    selection_max += 1
}
if (global.party_member != -4)
{
    i = 1
    while (i <= 5)
    {
        if (choice[i] == "NOTHING")
        {
            choice[i] = "TALK"
            break
        }
        else
        {
            i++
            continue
        }
    }
    selection_max += 1
}
