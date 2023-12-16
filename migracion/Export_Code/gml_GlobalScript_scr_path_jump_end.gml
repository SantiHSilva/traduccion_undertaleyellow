function scr_path_jump_end() //gml_Script_scr_path_jump_end
{
    if (path_position >= 1)
    {
        path_delete(jump_path)
        return 1;
    }
    return 0;
}

