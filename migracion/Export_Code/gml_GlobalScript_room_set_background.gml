function room_set_background(argument0, argument1, argument2, argument3, argument4, argument5, argument6, argument7, argument8, argument9, argument10, argument11) //gml_Script_room_set_background
{
    var __ind = argument0
    var __bind = argument1
    var __vis = argument2
    var __fore = argument3
    var __back = argument4
    var __x = argument5
    var __y = argument6
    var __htiled = argument7
    var __vtiled = argument8
    var __hspeed = argument9
    var __vspeed = argument10
    var __alpha = argument11
    if (room_exists(__ind) == 0)
        return -1;
    var __currroom = layer_get_target_room()
    layer_set_target_room(__ind)
    __background_set_element(__bind, __vis, __fore, __back, __x, __y, __htiled, __vtiled, 1, 1, 0, __hspeed, __vspeed, c_white, __alpha)
    layer_set_target_room(__currroom)
}

