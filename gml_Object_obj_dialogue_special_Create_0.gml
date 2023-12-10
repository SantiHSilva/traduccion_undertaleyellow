if live_call()
    return global.live_result;
letter_array = -1
letter_current = 1
letter_waiter = 0
line_current = 0
letter_speed = 1
sndfnt = 391
message[0] = ""
message_current = 0
message_advance = 0
position = 0
if instance_exists(obj_pl)
{
    obj_pl.state = gml_Script_scr_frozen_state
    if (obj_pl.y > (__view_get((1 << 0), 0) + 150))
        position = 1
    else
        position = 0
}
can_skip = 0
can_draw = 0
text_x[1] = 30
text_col = 16777215
text_x_mod = 0
text_y_mod = 0
mode = "swirl"
swirl_deg = 360
skippable = 1
alarm[1] = 1
global.dialogue_open = 1
draw_set_font(fnt_main)
str_width = string_width("w")
