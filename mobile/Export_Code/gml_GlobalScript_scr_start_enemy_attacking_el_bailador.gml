function scr_start_enemy_attacking_el_bailador() //gml_Script_scr_start_enemy_attacking_el_bailador
{
    instance_create(319, 320, obj_dialogue_box_battle_transformation_any)
    with (obj_dialogue_box_battle_transformation_any)
    {
        sc_able = 1
        sc_direction = "In"
        sc_dcurrent = 0
        sc_speed = 0.1
        sc_in_script = gml_Script_scr_start_enemy_attacking_el_bailador_ext
        sc_out_script = gml_Script_scr_sme_yellow_rhythm_out_script_el_bailador
        if (global.route != 3)
            sc_sprite = 1646
        else
            sc_sprite = 2096
    }
    if (global.route != 3)
        instance_create((obj_dialogue_box_battle_transformation_any.bbox_left + 79), (obj_dialogue_box_battle_transformation_any.bbox_top + 202), obj_heart_battle_fighting_yellow_rhythm)
    else
        instance_create(obj_dialogue_box_battle_transformation_any.x, obj_dialogue_box_battle_transformation_any.y, obj_heart_battle_fighting_red)
}

