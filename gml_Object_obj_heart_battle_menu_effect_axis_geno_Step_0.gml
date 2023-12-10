if live_call()
    return global.live_result;
var turns_passed = global.attack_cycle
var turns_passed_max = global.attack_cycle_max
if (in_battle_twitch == 1 && (!in_battle_twitch_finished))
{
    var main_heart = obj_heart_battle_fighting_parent
    if (in_battle_twitch_timer < 100)
        in_battle_twitch_timer++
    else
        in_battle_twitch_finished = 1
    var modifier = (in_battle_twitch_timer / 100)
    var probability = (modifier * 80)
    if (random(100) < probability)
    {
        var twitch_sound = audio_play_sound(snd_soul_charge, 1, false)
        audio_sound_pitch(twitch_sound, (1 + modifier))
        var twitch_heart = instance_create_depth((main_heart.x + random_range(-3, 3)), (main_heart.y + random_range(-3, 3)), -800, obj_heart_battle_menu_effect_axis_geno_twitch)
        with (twitch_heart)
        {
            var twitch_range = ((turns_passed / turns_passed_max) * 40)
            image_angle = random_range((-twitch_range), twitch_range)
        }
    }
    return;
}
if (instance_exists(obj_heart_battle_menu) && obj_heart_battle_menu.image_alpha > 0)
    main_heart = obj_heart_battle_menu
else if (instance_exists(obj_heart_battle_menu_act) && obj_heart_battle_menu_act.image_alpha > 0)
    main_heart = obj_heart_battle_menu_act
else if (instance_exists(obj_heart_battle_menu_fight) && obj_heart_battle_menu_fight.image_alpha > 0)
    main_heart = obj_heart_battle_menu_fight
else if (instance_exists(obj_heart_battle_menu_item) && obj_heart_battle_menu_item.image_alpha > 0)
    main_heart = obj_heart_battle_menu_item
else if (instance_exists(obj_heart_battle_menu_mercy) && obj_heart_battle_menu_mercy.image_alpha > 0)
    main_heart = obj_heart_battle_menu_mercy
else if (instance_exists(obj_heart_battle_menu_flee) && obj_heart_battle_menu_flee.image_alpha > 0)
    main_heart = obj_heart_battle_menu_flee
else
    return;
probability = ((turns_passed / turns_passed_max) * 70)
if (random(100) < probability)
{
    twitch_heart = instance_create_depth(main_heart.x, main_heart.y, -800, obj_heart_battle_menu_effect_axis_geno_twitch)
    with (twitch_heart)
    {
        twitch_range = ((turns_passed / turns_passed_max) * 40)
        image_angle = random_range((-twitch_range), twitch_range)
    }
}
