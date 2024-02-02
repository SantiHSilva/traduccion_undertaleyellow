if (room == rm_darkruins_04 && global.flag[1] == 1)
    swit = 1
if (swit == 1)
{
    if place_meeting(x, y, obj_interactable)
        instance_destroy(instance_place(x, y, obj_interactable))
    image_index = 1
}
if (image_index == 1)
    solid = 0
else
    solid = 1
