function scr_battle_damage_player() //gml_Script_scr_battle_damage_player
{
    var damage = ((((global.enemy_attack_stat - global.player_armor_defense) - global.player_armor_modifier_defense) - global.player_defense) + 10)
    global.current_hp_self -= damage
    audio_play_sound(snd_hurt, 1, false)
    with (obj_heart_battle_fighting_parent)
    {
        vulnerable = 0
        global.hit_self = 1
        alarm[0] = global.invulnerability_self
    }
}

