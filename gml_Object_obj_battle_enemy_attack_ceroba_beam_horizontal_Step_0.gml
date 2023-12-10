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
            audio_stop_sound(snd_kamehamehacharge)
            audio_play_sound(snd_kamehamehablast, 1, false)
        }
        attack_beam_draw_alpha = ((attack_beam_width_current / attack_beam_width) * 0.5)
        break
    case 1:
        if (attack_beam_grow == 1)
        {
            if (attack_beam_width_current < (attack_beam_width + attack_beam_width_fluctuation))
                attack_beam_width_current += 2
            else
                attack_beam_grow = 0
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
            attack_beam_width_current -= 8
        else
            instance_destroy()
        break
}

if (attack_beam_stage == 0)
    return;
var x_original = 0
var x_max = room_width
if (obj_heart_battle_fighting_parent.vulnerable == 1 && point_in_rectangle(obj_heart_battle_fighting_parent.x, obj_heart_battle_fighting_parent.y, x_original, (y - (attack_beam_width_current / 2)), x_max, (y + (attack_beam_width_current / 2))))
{
    with (obj_heart_battle_fighting_parent)
    {
        if (global.current_pp_self > 0)
        {
            instance_create(x, y, obj_heart_battle_effect_expand)
            for (i = 0; i < 5; i++)
                instance_create(x, y, obj_heart_battle_effect_shard)
            global.current_pp_self -= 1
            audio_play_sound(snd_mirrorbreak1, 20, false)
        }
        else
        {
            global.max_hp_self -= 3
            global.current_hp_self -= 3
            audio_play_sound(snd_ceroba_hurt_red, 1, false)
        }
        vulnerable = 0
        global.hit_self = 1
        alarm[0] = global.invulnerability_self
    }
}
