function obtenerItemSpanish(argument0) //gml_Script_obtenerItemSpanish
{
    itembuscar = argument0

    listaItems = ds_map_create()
    ds_map_add(listaItems, "Missing Poster", "Poster Desaparecidos")

    if (ds_map_exists(listaItems, itembuscar))
        return ds_map_find_value(listaItems, itembuscar)
    return itembuscar
}

