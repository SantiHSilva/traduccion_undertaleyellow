if (other.item_type == collider_type)
{
    obj_factory_02_seesaw_puzzle.seesaw_item_number -= 1
    audio_play_sound(snd_factory_puzzle_correct, 1, false)
}
else
{
    obj_factory_02_seesaw_puzzle.seesaw_item_number_wrong -= 1
    audio_play_sound(snd_fail, 1, false)
}
instance_destroy(other)
