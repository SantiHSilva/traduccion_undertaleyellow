script_execute(gml_Script_scr_depth, 0, 0, 0, 0, 0)
default_x_dalvshouse = 140
default_y_dalvshouse = 60
default_x_dalvroomhall = 130
default_y_dalvroomhall = 120
script_execute(gml_Script_scr_dalv_determine_destination)
upsprite = 85
downsprite = 82
leftsprite = 83
rightsprite = 84
image_speed = 0
waiter = 0
dalv_talk_waiter = 0
fadeout = 0
fadein = 0
spritelock = 1
npc_walking = 0
going_through_door = 0
no_loop_room_specific_walking = 0
no_loop_dalv_hallway = 0
no_loop_autowalk = 0
if (global.flag[17] == 2 || global.flag[17] == 4)
    instance_destroy()
if (room == rm_dalvhallway && obj_pl.player_mode != "DalvExit")
    instance_destroy()
