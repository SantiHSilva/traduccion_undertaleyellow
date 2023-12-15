if live_call()
    return global.live_result;
var random_item = obj_battle_enemy_attack_martlet_wing_gust_final_object
var spawn_depth = -100
spawn_count++
if (spawn_count > spawn_count_max)
{
    spawn_count = 0
    random_item = obj_battle_enemy_attack_martlet_wind_gust_final_boulder
    spawn_depth = -101
}
var random_number = irandom_range(0, 1)
if (obj_heart_battle_fighting_parent.idle_hsp_count > 0)
    instance_create_depth(obj_heart_battle_fighting_parent.x, (obj_dialogue_box_battle_transformation_any.bbox_top - 10), spawn_depth, random_item)
else
    instance_create_depth((obj_heart_battle_fighting_parent.x + ((global.speed_self * 4) * obj_heart_battle_fighting_parent.last_hsp)), (obj_dialogue_box_battle_transformation_any.bbox_top - 10), spawn_depth, random_item)
