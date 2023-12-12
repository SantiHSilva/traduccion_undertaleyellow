position = 0
position_array[0] = -1
if instance_exists(obj_pl)
{
    obj_pl.state = gml_Script_scr_frozen_state
    if (obj_pl.y > (__view_get((1 << 0), 0) + 150))
        position = 1
    else
        position = 0
}
choice = 0
ch[1] = ""
ch[2] = ""
ch[3] = ""
ch[4] = ""
p = 1
ch_msg = -1
outcome = 0
textWidth = 210
textSep = 16
message_current = 0
message_actual = ""
message_actual_col[0] = ""
message_reset = 0
cutoff = 0
counter = 0
message_timer = -1
mT = -1
portrait = 1
prt[0] = 0
image_speed = 0.2
message[0] = ""
talker[0] = -4
talker_current = 0
message_col[0][0] = ""
col_modif[0] = 16711680
col_modif[1] = 255
color = 0
color_set = 0
sndfnt = 99
sndfnt_array[0] = -4
global.dialogue_open = 1
dialogue_is_minishop = 0
skippable = 1
dialogue_font = 9
portrait_idle_animated = 0
portrait_idle_frame = 0
portrait_can_animate = 1
