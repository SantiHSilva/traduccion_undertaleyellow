var pl_sprite = spr_collisionbox
depth = (active_object.depth - 1)
if (global.route == 3)
{
    switch active_object.sprite_index
    {
        case spr_pl_up:
            pl_sprite = spr_pl_up_roof
            break
        case 2226:
            pl_sprite = spr_pl_down_roof_geno
            break
        case 3704:
            pl_sprite = spr_pl_left_roof_geno
            break
        case 2918:
            pl_sprite = spr_pl_right_roof_geno
            break
        case 3380:
            pl_sprite = spr_pl_up_geno_shoot_roof
            break
        default:
            pl_sprite = -4
            return;
    }

}
else
{
    switch active_object.sprite_index
    {
        case spr_pl_up:
            pl_sprite = 3466
            break
        case 23:
            pl_sprite = 732
            break
        case 22:
            pl_sprite = 620
            break
        case 21:
            pl_sprite = 2617
            break
        default:
            pl_sprite = -4
            return;
    }

}
draw_set_alpha(overlay_draw_alpha)
draw_sprite(pl_sprite, active_object.image_index, active_object.x, active_object.y)
draw_set_alpha(1)
