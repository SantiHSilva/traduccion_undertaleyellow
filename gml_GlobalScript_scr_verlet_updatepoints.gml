function scr_verlet_updatepoints(argument0, argument1, argument2) //gml_Script_scr_verlet_updatepoints
{
    for (var i = 0; i < array_length(argument0); i++)
    {
        var p = array_get(argument0, i)
        if (!(array_get(p, 4)))
        {
            var vx = ((array_get(p, 0) - array_get(p, 2)) * argument1)
            var vy = ((array_get(p, 1) - array_get(p, 3)) * argument1)
            array_set(p, 2, array_get(p, 0))
            array_set(p, 3, array_get(p, 1))
            array_set(p, 0, (array_get(p, 0) + vx))
            array_set(p, 1, (array_get(p, 1) + vy))
            array_set(p, 1, (array_get(p, 1) + argument2))
        }
    }
}

