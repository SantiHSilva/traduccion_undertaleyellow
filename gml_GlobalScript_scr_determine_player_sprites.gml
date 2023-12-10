function scr_determine_player_sprites() //gml_Script_scr_determine_player_sprites
{
    if (global.route != 3)
    {
        usprite_walk = spr_pl_up
        dsprite_walk = spr_pl_down
        lsprite_walk = spr_pl_left
        rsprite_walk = spr_pl_right
        usprite_run = spr_pl_run_up
        dsprite_run = spr_pl_run_down
        lsprite_run = spr_pl_run_left
        rsprite_run = spr_pl_run_right
    }
    else
    {
        usprite_walk = spr_pl_up
        dsprite_walk = spr_pl_down_geno
        lsprite_walk = spr_pl_left_geno
        rsprite_walk = spr_pl_right_geno
        usprite_run = spr_pl_run_up_geno
        dsprite_run = spr_pl_run_down_geno
        lsprite_run = spr_pl_run_left_geno
        rsprite_run = spr_pl_run_right_geno
    }
    switch global.player_sprites
    {
        case "kanako":
            usprite_walk = spr_kanako_up_walk
            dsprite_walk = spr_kanako_down_walk
            lsprite_walk = spr_kanako_left_walk
            rsprite_walk = spr_kanako_right_walk
            usprite_run = spr_kanako_up_walk
            dsprite_run = spr_kanako_down_walk
            lsprite_run = spr_kanako_left_walk
            rsprite_run = spr_kanako_right_walk
            break
        case "normal":
            shader_on = 0
            palette_index = 0
            break
        case "snowdin":
            shader_on = 1
            palette_index = 0
            break
        case "dunescave":
            shader_on = 1
            palette_index = 1
            break
        case "steamworkslava":
            shader_on = 1
            palette_index = 2
            break
        case "water":
            if (room == rm_dunes_01)
            {
                shader_on = 1
                palette_index = 1
            }
            if (global.route != 3)
            {
                usprite_walk = 54
                dsprite_walk = 55
                lsprite_walk = 52
                rsprite_walk = 53
                usprite_run = spr_pl_run_up_water
                dsprite_run = spr_pl_run_down_water
                lsprite_run = spr_pl_run_left_water
                rsprite_run = spr_pl_run_right_water
            }
            else
            {
                usprite_walk = 54
                dsprite_walk = 1571
                lsprite_walk = 2594
                rsprite_walk = 3094
                usprite_run = spr_pl_run_up_water_geno
                dsprite_run = spr_pl_run_down_water_geno
                lsprite_run = spr_pl_run_left_water_geno
                rsprite_run = spr_pl_run_right_water_geno
            }
            break
    }

    usprite = usprite_walk
    dsprite = dsprite_walk
    lsprite = lsprite_walk
    rsprite = rsprite_walk
    if (is_sprinting == 1)
    {
        usprite = usprite_run
        dsprite = dsprite_run
        lsprite = lsprite_run
        rsprite = rsprite_run
    }
    if (palette_index != 0)
        shader_on = 1
}

