if (starlo_intro_dialogue_created == 1 && (!instance_exists(obj_quote_battle_starlo)))
{
    starlo_intro_dialogue_created = 0
    alarm[3] = 15
}
if (starlo_soul_can_move == 1 && (!instance_exists(obj_heart_tutorial_arrows_rope_yellow)))
{
    starlo_soul_can_move = 0
    if (!alarm[2])
        alarm[2] = 70
}
