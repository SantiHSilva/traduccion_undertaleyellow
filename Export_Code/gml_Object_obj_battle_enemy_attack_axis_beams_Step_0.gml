if live_call()
    return global.live_result;
switch attack_beam_stage
{
    case 0:
        attack_beam_width_current += attack_beam_width_inc
        if (attack_beam_width_current >= attack_beam_width)
        {
            attack_beam_width_current = attack_beam_width
            attack_beam_stage = 1
            attack_beam_draw_color = make_colour_rgb(230, 50, 50)
            screenshake = 1
        }
        attack_beam_draw_alpha = ((attack_beam_width_current / attack_beam_width) * 0.5)
        break
    case 1:
        if (attack_beam_grow == 1)
        {
            if (attack_beam_width_current < (attack_beam_width + attack_beam_width_fluctuation))
                attack_beam_width_current += 2
        }
        if (attack_beam_grow == 0)
        {
            if (attack_beam_width_current > (attack_beam_width - attack_beam_width_fluctuation))
                attack_beam_width_current -= 2
            else
                attack_beam_grow = 1
        }
        if (attack_beam_timer > 0)
            attack_beam_timer -= 1
        else
            attack_beam_stage = 2
        break
    case 2:
        if (attack_beam_width_current > 0)
            attack_beam_width_current -= 7
        else
            instance_destroy()
        break
}

if (attack_beam_stage == 0)
    return;
var y_original = 0
var y_max = room_height
var x_original = 0
var x_max = room_width
if (obj_heart_battle_fighting_parent.vulnerable == 1 && (point_in_rectangle(obj_heart_battle_fighting_parent.x, obj_heart_battle_fighting_parent.y, (x - (attack_beam_width_current / 2)), y_original, (x + (attack_beam_width_current / 2)), y_max) || point_in_rectangle(obj_heart_battle_fighting_parent.x, obj_heart_battle_fighting_parent.y, x_original, (y - (attack_beam_width_current / 2)), x_max, (y + (attack_beam_width_current / 2)))))
{
    var damage = ((((global.enemy_attack_stat - global.player_armor_defense) - global.player_armor_modifier_defense) - global.player_defense) + 10)
    if (damage < 1)
        damage = 1
    global.current_hp_self -= damage
    audio_play_sound(snd_hurt, 1, false)
    with (obj_heart_battle_fighting_parent)
    {
        vulnerable = 0
        global.hit_self = 1
        alarm[0] = global.invulnerability_self
    }
}
