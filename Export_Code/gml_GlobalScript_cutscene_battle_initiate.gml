function cutscene_battle_initiate(argument0, argument1, argument2) //gml_Script_cutscene_battle_initiate
{
    global.battle_enemy_name = argument0
    if (argument1 == 1)
    {
        global.battling_enemy = 0
        global.battling_boss = 1
    }
    else
    {
        global.battling_enemy = 1
        global.battling_boss = 0
    }
    global.battle_start = 1
    global.sound_carry_overworld = argument2
    if (room != rm_death_screen)
        global.current_room_overworld = room_get_name(room)
    instance_create(obj_pl.x, obj_pl.y, obj_heart_initiate_battle)
    cutscene_advance()
    return 1;
}

