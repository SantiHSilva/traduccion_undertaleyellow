var battle_enemy_name = global.battle_enemy_name
var game_mode = global.game_mode
if (game_mode == "customs")
{
}
else if (game_mode == "yellow")
{
    if (battle_enemy_name == "dalv")
    {
        var enemy_mode = global.enemy_mode
        switch enemy_mode
        {
            case 0:
                if (global.enemy_betrayed == 0)
                {
                    message[0] = "I've never been#good with words..."
                    message[1] = "So I'll just#say this:"
                    message[2] = "Sorry..."
                    message[3] = "To everyone."
                    portrait[0] = 1786
                    portrait[1] = 1781
                    portrait[2] = 1786
                    portrait[3] = 1764
                    message_end = 3
                    dialogue_extend = 0
                }
                break
            case 1:
                message[0] = "I've never been#good with words..."
                message[1] = "So I'll just#say this:"
                message[2] = "Sorry..."
                message[3] = "To everyone."
                portrait[0] = 1786
                portrait[1] = 1781
                portrait[2] = 1786
                portrait[3] = 1764
                message_end = 3
                dialogue_extend = 0
                break
        }

        talking_script = gml_Script_scr_talking_dalv
    }
}
message_current = 0
message_draw = ""
increase = global.text_speed
characters = 0
hold = 0
message_length = string_length(message[message_current])
script_execute(gml_Script_scr_generate_text_counters)
