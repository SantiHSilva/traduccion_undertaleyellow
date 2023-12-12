if (image_alpha < 1)
    image_alpha += 0.05
if (card_active == 1)
{
    x = lerp(x, card_target_x, 0.3)
    y = lerp(y, card_target_y, 0.3)
    if (abs((x - card_target_x)) <= 5 && abs((y - card_target_y)) <= 5)
        sprite_index = spr_attack_ace_card_back
    if (abs((x - card_target_x)) <= 0.05 && abs((y - card_target_y)) <= 0.05)
    {
        x = card_target_x
        y = card_target_y
        card_active = 0
        alarm[2] = reset_delay
    }
}
if (card_return == 1)
{
    x = lerp(x, card_original_x, 0.5)
    y = lerp(y, card_original_y, 0.5)
    if (abs((x - card_original_x)) <= 0.01 && abs((y - card_original_y)) <= 0.01)
    {
        x = card_original_x
        y = card_original_y
        card_return = 0
        with (obj_attack_ace_dealing_cards)
        {
            if (card_return == 1)
                return;
        }
        obj_attack_ace_dealing_controller.alarm[0] = next_attack_delay
    }
}
