var item_slot = global.item_slot[3]
if (item_slot == "Hot Dog...?")
{
    message[0] = ("* You eat the " + string(item_slot))
    message[1] = "#* Your HP was maxed out."
}
message_current = 0
message_end = 0
message_draw = ""
increase = global.text_speed
characters = 0
hold = 0
message_length = string_length(message[message_current])
no_loop = 0
script_execute(gml_Script_scr_generate_text_counters)
