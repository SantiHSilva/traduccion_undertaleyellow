if (image_index >= index_trigger_bg && trigger_bg == 0)
{
    event_user(0)
    trigger_bg = 1
}
if (obj_enemy_controller_feisty_four.vanish_type == "Mooch Smack")
{
    if (image_index >= 10 && mooch_smack_approach == 0)
    {
        mooch_smack_approach = 1
        mooch_smack_x_start = x
    }
}
if (mooch_smack_approach == 1 && image_index <= 14)
{
    var mooch_smack_x_target = 318
    var mooch_smack_x_dist = (mooch_smack_x_start - mooch_smack_x_target)
    var mooch_smack_x_multi = ((image_index - 9) / 5)
    x = (mooch_smack_x_start - (mooch_smack_x_dist * mooch_smack_x_multi))
}
