if live_call()
    return global.live_result;
draw_set_font(fnt_main)
var x_offset = 40
var y_offset = 40
var line_counter = 0
var line_offset = 20
var section_offset = 30
var header_offset = 10
switch current_slide
{
    case 0:
        break
    case 1:
        draw_sprite_ext(spr_logo_undertale, 1, 160, 96, 0.5, 0.5, 0, c_white, 1)
        draw_sprite_ext(logo_yellow, 1, 160, 128, 0.5, 0.5, 0, c_white, 1)
        break
    case 2:
        draw_set_halign(fa_center)
        draw_set_color(c_yellow)
        draw_text(160, 100, credits_entry[0][0])
        draw_set_color(c_white)
        draw_text(160, 120, credits_entry[0][1])
        break
    case 3:
        draw_credit_group_gml_Object_obj_credits_final_geno_Draw_64(1, 20, 20)
        draw_credit_group_gml_Object_obj_credits_final_geno_Draw_64(2, 150, 20)
        draw_credit_group_gml_Object_obj_credits_final_geno_Draw_64(3, 100, 140)
        break
    case 4:
        draw_credit_group_gml_Object_obj_credits_final_geno_Draw_64(4, 20, 20)
        draw_credit_group_gml_Object_obj_credits_final_geno_Draw_64(5, 150, 15)
        break
    case 5:
        draw_credit_group_gml_Object_obj_credits_final_geno_Draw_64(6, 90, 15)
        draw_credit_group_gml_Object_obj_credits_final_geno_Draw_64(9, 20, 125)
        draw_credit_group_gml_Object_obj_credits_final_geno_Draw_64(10, 170, 125)
        draw_credit_group_gml_Object_obj_credits_final_geno_Draw_64(11, 90, 175)
        break
    case 6:
        draw_credit_group_gml_Object_obj_credits_final_geno_Draw_64(7, 20, 20)
        draw_credit_group_gml_Object_obj_credits_final_geno_Draw_64(8, 170, 20)
        break
    case 7:
        draw_credit_group_gml_Object_obj_credits_final_geno_Draw_64(13, 20, 20)
        draw_credit_group_gml_Object_obj_credits_final_geno_Draw_64(14, 170, 20)
        draw_credit_group_gml_Object_obj_credits_final_geno_Draw_64(15, 20, 130)
        break
    case 8:
        draw_credit_group_gml_Object_obj_credits_final_geno_Draw_64(16, 20, 20)
        break
    case 9:
        draw_credit_group_gml_Object_obj_credits_final_geno_Draw_64(17, 20, 20)
        break
    case 10:
        draw_credit_group_gml_Object_obj_credits_final_geno_Draw_64(18, 20, 20)
        break
    case 11:
        draw_credit_group_gml_Object_obj_credits_final_geno_Draw_64(19, 20, 20)
        break
    case 12:
        draw_set_halign(fa_center)
        draw_set_color(c_white)
        draw_text(160, 10, credits_entry[20][0])
        draw_text(160, 50, credits_entry[20][2])
        draw_set_color(c_yellow)
        draw_text(160, 80, credits_entry[20][3])
        draw_set_color(c_white)
        draw_text(160, 100, credits_entry[20][4])
        draw_text(160, 120, credits_entry[20][5])
        draw_text(160, 140, credits_entry[20][6])
        draw_set_color(c_yellow)
        draw_text(160, 170, credits_entry[20][7])
        draw_set_color(c_white)
        draw_text(160, 190, credits_entry[20][8])
        draw_text(160, 210, credits_entry[20][9])
        break
    default:

}

function draw_credit_group_gml_Object_obj_credits_final_geno_Draw_64(argument0, argument1, argument2) //gml_Script_draw_credit_group_gml_Object_obj_credits_final_geno_Draw_64
{
    draw_set_halign(fa_left)
    for (var i = 0; i < array_length(credits_entry[argument0]); i++)
    {
        var current_line = ((i - 1) div 9)
        draw_set_color(c_white)
        var x_modif = (0 + (current_line * 160))
        var y_modif = ((i * 20) - (current_line * 180))
        var y_modif_height = 0
        if (string_height(credits_entry[argument0][0]) > 20 && i > 0)
            y_modif_height = 15
        if (i == 0)
        {
            draw_set_color(c_yellow)
            x_modif = 0
        }
        draw_text((argument1 + x_modif), ((argument2 + y_modif) + y_modif_height), credits_entry[argument0][i])
        draw_set_color(c_white)
    }
}

