if (cardg_selected_card[1] != -1)
{
    if (cardg_selected_card[0].card_type == cardg_selected_card[1].card_type)
    {
        cardg_selected_card[0].card_success = 1
        cardg_selected_card[1].card_success = 1
        audio_play_sound(snd_card_game_match, 1, false)
    }
}
cardg_selected_card[0].card_is_selected = 0
if (cardg_selected_card[1] != -1)
    cardg_selected_card[1].card_is_selected = 0
cardg_selected_card[0] = -1
if (cardg_selected_card[1] != -1)
    cardg_selected_card[1] = -1
with (obj_card_game_card)
    image_alpha = 1
