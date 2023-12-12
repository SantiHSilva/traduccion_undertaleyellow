if instance_exists(obj_martlet_follower)
{
    var martlet_sprite = spr_collisionbox
    switch obj_martlet_follower.sprite_index
    {
        case spr_martlet_up:
            martlet_sprite = spr_martlet_up_roof
            break
        case 262:
            martlet_sprite = spr_martlet_up_talk_roof
            break
        case 274:
            martlet_sprite = spr_martlet_down_roof
            break
        case 265:
            martlet_sprite = spr_martlet_down_talk_roof
            break
        case 272:
            martlet_sprite = spr_martlet_left_roof
            break
        case 268:
            martlet_sprite = spr_martlet_left_talk_roof
            break
        case 270:
            martlet_sprite = spr_martlet_right_roof
            break
        case 263:
            martlet_sprite = spr_martlet_right_talk_roof
            break
    }

    draw_set_alpha(overlay_draw_alpha_follower)
    draw_sprite(martlet_sprite, obj_martlet_follower.image_index, obj_martlet_follower.x, obj_martlet_follower.y)
    draw_set_alpha(1)
}
