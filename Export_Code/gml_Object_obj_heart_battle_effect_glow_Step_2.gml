if ((!instance_exists(obj_heart_battle_fighting_parent)) || global.current_pp_self <= 0)
    instance_destroy()
if (obj_heart_battle_fighting_parent.vulnerable == 1)
{
    image_alpha += image_alpha_increase
    if (image_alpha >= 1)
    {
        image_alpha = 1
        image_alpha_increase = (-image_alpha_increase)
    }
    if (image_alpha <= 0)
    {
        image_alpha = 0
        image_alpha_increase = (-image_alpha_increase)
    }
}
else
{
    image_alpha = 0
    image_alpha_increase = abs(image_alpha_increase)
}
x = obj_heart_battle_fighting_parent.x
y = obj_heart_battle_fighting_parent.y
image_angle = obj_heart_battle_fighting_parent.image_angle
switch obj_heart_battle_fighting_parent.sprite_index
{
    case spr_heart_yellow_left:
        if instance_exists(obj_heart_battle_fighting_axis)
            image_angle = (-90 + obj_heart_battle_fighting_axis.image_angle)
        else
            image_angle += 90
        break
    case 1664:
        image_angle -= 90
        break
    case 1662:
    case 2747:
    case 2466:
    case 2668:
    case 2739:
        image_angle -= 180
        break
}

