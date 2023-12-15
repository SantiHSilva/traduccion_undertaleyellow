if (layer_sequence_is_finished(attack_sequence) && can_move == 0)
{
    can_move = 1
    x_new = irandom_range(350, 450)
}
if (can_move == 1)
{
    if (abs((layer_sequence_get_x(attack_sequence) - x_new)) > 0.5)
        layer_sequence_x(attack_sequence, lerp(layer_sequence_get_x(attack_sequence), x_new, 0.4))
    else
    {
        can_move = 0
        layer_sequence_play(attack_sequence)
    }
}
