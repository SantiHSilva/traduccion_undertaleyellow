xs = 1
ys = 1
sizex = 1
sizey = 1
enlarge = 0
color = 16777215
image_index = 0
image_speed = 0
itemBox = 0
statBox = 0
p1 = 1
p2 = 0
roomname = "Dark Ruins - Hallway"
color2 = 16777215
done = 0
ready = 0
scr_determine_save_area()
var current_world_value = scr_determine_world_value_yellow()
switch current_world_value
{
    case 1:
        global.menu_sprite = 2628
        break
    case 2:
        global.menu_sprite = 1245
        break
    case 3:
        global.menu_sprite = 3298
        break
    case 4:
        global.menu_sprite = 3691
        break
    case 5:
        global.menu_sprite = 3091
        break
}

if (room == rm_newhome_03)
    global.menu_sprite = 2772
