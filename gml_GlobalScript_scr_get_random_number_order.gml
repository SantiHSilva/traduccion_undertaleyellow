function scr_get_random_number_order(argument0, argument1) //gml_Script_scr_get_random_number_order
{
    var rnumber_for_max = (argument1 - argument0)
    for (i = 0; i <= rnumber_for_max; i++)
        rnumber_order[i] = (argument0 + i)
    for (i = 0; i <= (rnumber_for_max - 1); i++)
    {
        var rnumber_switch = irandom_range(i, rnumber_for_max)
        if (rnumber_switch != i)
        {
            var rnumber_temp = rnumber_order[i]
            rnumber_order[i] = rnumber_order[rnumber_switch]
            rnumber_order[rnumber_switch] = rnumber_temp
        }
    }
}

