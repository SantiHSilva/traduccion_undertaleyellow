global.player_exp += global.enemy_exp
global.player_gold += global.enemy_gold
if (global.game_mode == "customs")
    message[0] = (((("* YOU WON!#* You earned " + string(global.enemy_exp)) + " XP and ") + string(global.enemy_gold)) + " gold.")
else if (global.game_mode == "yellow")
{
    if (global.battle_enemy_name == "decibat")
        message[0] = (((("* Sweet silence...#* You earned " + string(global.enemy_exp)) + " XP and ") + string(global.enemy_gold)) + " gold.")
    else
        message[0] = (((("* YOU WON!#* You earned " + string(global.enemy_exp)) + " XP and ") + string(global.enemy_gold)) + " gold.")
}
if (global.player_exp >= global.player_exp_next[global.player_level])
{
    var i = global.player_level
    while (i <= 20)
    {
        if (global.player_exp >= global.player_exp_next[i])
        {
            global.player_level = (i + 1)
            global.max_hp_self = global.player_hp_next[(i + 1)]
            global.player_attack = global.player_attack_next[(i + 1)]
            global.player_defense = global.player_defense_next[(i + 1)]
            i += 1
            continue
        }
        else
            break
    }
    audio_play_sound(snd_love_increased, 20, false)
    message[0] = (message[0] + "#* Your LOVE increased.")
}
message_current = 0
message_end = 0
message_draw = ""
increase = global.text_speed
characters = 0
hold = 0
message_length = string_length(message[message_current])
can_check_display_text = 0
display_text = 0
alarm[0] = 1
moveable = 1
script_execute(gml_Script_scr_generate_text_counters)
