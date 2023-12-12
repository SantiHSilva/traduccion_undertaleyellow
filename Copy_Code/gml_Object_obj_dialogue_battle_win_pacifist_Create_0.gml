global.player_gold += global.enemy_gold
if (global.game_mode == "customs")
    message[0] = (("* GANASTE!#* Conseguiste 0 XP y " + string(global.enemy_gold)) + " de oro.")
else if (global.game_mode == "yellow")
{
    if (global.battle_enemy_name == "froggit intro")
        message[0] = "* (La misteriosa señora cabra#  asusto a Froggit.)"
    else if (global.battle_enemy_name == "decibat")
    {
        if (global.enemy_sparing == 1)
            message[0] = "* Dulce silencio..."
        else
            message[0] = "* Decibat se aleja para encontrar#  un lugar más tranquilo."
    }
    else
        message[0] = (("* GANASTE!#* Obtuviste 0 XP y " + string(global.enemy_gold)) + " de oro.")
}
message_current = 0
message_end = 0
message_draw = ""
increase = global.text_speed
characters = 0
hold = 0
message_length = string_length(message[message_current])
moveable = 1
script_execute(gml_Script_scr_generate_text_counters)
