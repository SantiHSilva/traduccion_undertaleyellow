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
var y_original = 0
var y_max = room_height
if (obj_heart_battle_fighting_parent.vulnerable == 1 && point_in_rectangle(obj_heart_battle_fighting_parent.x, obj_heart_battle_fighting_parent.y, (x - (attack_beam_width_current / 2)), y_original, (x + (attack_beam_width_current / 2)), y_max))
{
    global.max_hp_self -= 3
    global.current_hp_self -= 3
    audio_play_sound(snd_ceroba_hurt_red, 1, false)
    with (obj_heart_battle_fighting_parent)
    {
        vulnerable = 0
        global.hit_self = 1
        alarm[0] = global.invulnerability_self
    }
}
