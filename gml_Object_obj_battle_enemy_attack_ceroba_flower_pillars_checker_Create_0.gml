counter_current = 0
counter_max = 300
var bullet_number = 8
var xx = ((obj_dialogue_box_battle_transformation_any.bbox_right - obj_dialogue_box_battle_transformation_any.bbox_left) / bullet_number)
for (var i = 0.5; i < bullet_number; i++)
    instance_create((obj_dialogue_box_battle_transformation_any.bbox_left + (i * xx)), irandom_range((obj_dialogue_box_battle_transformation_any.bbox_top + 15), (obj_dialogue_box_battle_transformation_any.bbox_bottom - 15)), obj_battle_enemy_attack_ceroba_flower_pillars_bullet)
alarm[0] = 30
