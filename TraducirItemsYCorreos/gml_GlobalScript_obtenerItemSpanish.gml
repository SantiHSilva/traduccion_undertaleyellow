function obtenerItemSpanish(argument0) //gml_Script_obtenerItemSpanish
{
    buscar = argument0

    lista = ds_map_create()
    ds_map_add(listaItems, "Missing Poster", "Poster Desaparecidos")

    if (ds_map_exists(listaItems, buscar))
        return ds_map_find_value(listaItems, buscar)
    return buscar
}

