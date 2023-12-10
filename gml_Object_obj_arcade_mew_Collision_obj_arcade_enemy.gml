if is_dashing
{
}
if (arc_hurt == 0 && other.arc_enemy_death == 0)
{
    arc_hurt = 1
    obj_arcade_controller.arcade_lives -= 1
    audio_play_sound(snd_monster_damage_hit, 1, false)
}
