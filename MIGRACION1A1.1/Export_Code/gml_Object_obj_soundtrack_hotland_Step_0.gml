event_inherited()
var snow_geno = 0
if (global.kill_number[2] <= 0)
    snow_geno = 1
if (!instance_exists(obj_dialogue))
{
    waiter = 0
    talk = 0
}
var animate = obj_rodney_hotland.animate
if (animate == 0)
{
    image_speed = 0
    image_index = 0
}
else
    image_speed = 0.2
