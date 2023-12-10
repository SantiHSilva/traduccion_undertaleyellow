if (layer_sequence_is_finished(attack_sequence) && text_box_noloop == 0)
{
    instance_create(402, 68, obj_quote_bubble_battle_yellow_2)
    instance_create(0, 0, obj_quote_battle_sousborg_spare)
    layer_sequence_destroy(attack_sequence)
    text_box_noloop = 1
}
