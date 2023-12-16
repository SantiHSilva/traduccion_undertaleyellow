if (arc_enemy_hp > 0)
    instance_destroy(other)
arc_enemy_hp -= 1
if (arc_enemy_hp > 0)
{
    arc_enemy_hit = 1
    alarm[0] = 5
    audio_play_sound(snd_arc_hit, 1, false)
}
else if (arc_enemy_death == 0)
{
    step = 0
    arc_enemy_death = 1
    obj_arcade_controller.arcade_score += arc_enemy_score
    image_index = 0
    sprite_index = arc_sprite_spared
    audio_play_sound(snd_arc_defeat, 1, false)
    var scr = instance_create(x, (y - 20), obj_arcade_score)
    scr.score_amount = arc_enemy_score
}
