function scr_start_enemy_attacking_bowll_solo() //gml_Script_scr_start_enemy_attacking_bowll_solo
{
    if (global.enemy_attack == "Bowll Test Song")
    {
        instance_create(319, 320, obj_dialogue_box_battle_transformation_any)
        with (obj_dialogue_box_battle_transformation_any)
        {
            sc_able = 1
            sc_direction = "In"
            sc_dcurrent = 0
            sc_speed = 0.1
            sc_in_script = gml_Script_scr_start_enemy_attacking_bowll_solo_ext
            sc_out_script = gml_Script_scr_sme_yellow_rhythm_out_script_bowll
            sc_sprite = 1646
        }
        instance_create((obj_dialogue_box_battle_transformation_any.bbox_left + 79), (obj_dialogue_box_battle_transformation_any.bbox_top + 202), obj_heart_battle_fighting_yellow_rhythm)
    }
    else
    {
        instance_create(319, 320, obj_dialogue_box_battle_transformation_any)
        instance_create(414, 94, obj_quote_bubble_battle_yellow_2)
        instance_create(0, 0, obj_quote_battle_bowll_a)
        instance_create(round((obj_dialogue_box_battle_transformation_any.bbox_left + ((obj_dialogue_box_battle_transformation_any.bbox_right - obj_dialogue_box_battle_transformation_any.bbox_left) / 2))), round((obj_dialogue_box_battle_transformation_any.bbox_top + ((obj_dialogue_box_battle_transformation_any.bbox_bottom - obj_dialogue_box_battle_transformation_any.bbox_top) / 2))), obj_heart_battle_fighting_red)
    }
}

