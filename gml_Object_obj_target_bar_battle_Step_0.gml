script_execute(gml_Script_scr_controls_battle_target)
if (x >= 594 && no_loop == 0)
{
    hsp = 0
    image_alpha = 0
    alarm[0] = 1
    no_loop = 1
}
if key_select
{
    hsp = 0
    image_speed = 0.2
    if (global.fight_number == 1)
        instance_create(global.enemy_target_x, global.enemy_target_y, obj_strike)
    else if (global.fight_number == 2)
        instance_create(global.enemy_target_x_2, global.enemy_target_y_2, obj_strike)
    else if (global.fight_number == 3)
        instance_create(global.enemy_target_x_3, global.enemy_target_y_3, obj_strike)
    button_pressed = 1
}
x += hsp
