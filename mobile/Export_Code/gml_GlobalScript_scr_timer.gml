function scr_timer() //gml_Script_scr_timer
{
    if (timer > 0)
    {
        timer--
        return 0;
    }
    else
        return 1;
}

