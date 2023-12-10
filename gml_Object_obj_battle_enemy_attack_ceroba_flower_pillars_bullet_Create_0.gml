damage_number = scr_determine_damage_number_enemy("ceroba", "void", "void")
state = 0
vspeed = random_range(-0.1, 0.1)
attack_target_x = x
attack_target_y = y
creator = obj_quote_battle_ceroba_outro_4
image_speed = 0.1
while place_meeting(x, y, obj_heart_battle_fighting_parent)
{
    y += sign(vspeed)
    x += sign(hspeed)
}
