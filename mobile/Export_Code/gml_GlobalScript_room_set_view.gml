function room_set_view(argument0, argument1, argument2, argument3, argument4, argument5, argument6, argument7, argument8, argument9, argument10, argument11, argument12, argument13, argument14, argument15) //gml_Script_room_set_view
{
    var __ind = argument0
    var __vind = argument1
    var __vis = argument2
    var __xview = argument3
    var __yview = argument4
    var __wview = argument5
    var __hview = argument6
    var __xport = argument7
    var __yport = argument8
    var __wport = argument9
    var __hport = argument10
    var __hborder = argument11
    var __vborder = argument12
    var __hspeed = argument13
    var __vspeed = argument14
    var __obj = argument15
    if (!room_exists(__ind))
    {
        show_debug_message((("room_set_view: room " + string(__ind)) + " does not exist"))
        return -1;
    }
    if (__vind < 0 || __vind > 7)
    {
        show_debug_message("room_set_view: view index out of range")
        return -1;
    }
    var __newcam = camera_create_view(__xview, __yview, __wview, __hview, 0, __obj, __hspeed, __vspeed, __hborder, __vborder)
    var __currcam = room_get_camera(__ind, __vind)
    if (__currcam != -1)
        camera_destroy(__currcam)
    room_set_camera(__ind, __vind, __newcam)
    room_set_viewport(__ind, __vind, __vis, __xport, __yport, __wport, __hport)
    return -1;
}

