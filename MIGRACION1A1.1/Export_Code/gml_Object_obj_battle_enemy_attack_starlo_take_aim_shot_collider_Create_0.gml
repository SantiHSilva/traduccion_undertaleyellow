damage_number = scr_determine_damage_number_enemy("starlo", "void", "void")
if instance_exists(obj_battle_enemy_attack_starlo_rope)
{
    if (position_meeting(x, y, obj_battle_enemy_attack_starlo_rope) && (!(position_meeting(x, y, obj_heart_battle_fighting_red))))
    {
        obj_battle_enemy_attack_starlo_rope.rope_damaged = 1
        instance_destroy()
        return;
    }
}
image_speed = 0
alarm[0] = 1
