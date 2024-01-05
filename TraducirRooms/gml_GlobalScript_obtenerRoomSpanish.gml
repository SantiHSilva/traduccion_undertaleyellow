function obtenerRoomSpanish() //gml_Script_obtenerRoomSpanish
{
    cuartos = ds_map_create()
    cuarto_actual = ini_read_string("Save1", "rmName", "Room Name")
    ds_map_add(cuartos, "The Furnace", "El Horno")
    ds_map_add(cuartos, "Dark Ruins - Entrance", "Ruinas Oscuras - Entrada")
    ds_map_add(cuartos, "Dark Ruins - Main", "Ruinas Oscuras - Atrio")
    ds_map_add(cuartos, "Dark Ruins - Cliff", "Ruinas Oscuras - Abismo")
    ds_map_add(cuartos, "Dark Ruins - Puzzle", "Ruinas Oscuras - Puzzle")
    ds_map_add(cuartos, "Dark Ruins - Hall", "Ruinas Oscuras - Salón")
    ds_map_add(cuartos, "Snowdin - Delta Rock", "Snowdin - Roca Delta")
    ds_map_add(cuartos, "Snowdin - Ruined Shack", "Snowdin - Cabaña Rota")
    ds_map_add(cuartos, "Snowdin - Pathway", "Snowdin - Sendero");
    ds_map_add(cuartos, "Snowdin - Resort", "Snowdin - Resort");
    ds_map_add(cuartos, "Snowdin - Corridor", "Snowdin - Corredor");
    ds_map_add(cuartos, "Dunes - Cave", "Dunas - Cueva");
    ds_map_add(cuartos, "Dunes - Tree", "Dunas - Árbol");
    ds_map_add(cuartos, "Mines - Elevator", "Minas - Elevador");
    ds_map_add(cuartos, "Mines - Minecart", "Minas - Vagoneta");
    ds_map_add(cuartos, "Dunes - Mountaintop", "Dunas - Cima de montaña");
    ds_map_add(cuartos, "Dunes - Playground", "Dunas - Parque infantil");
    ds_map_add(cuartos, "Dunes - Well", "Dunas - Pozo");
    ds_map_add(cuartos, "Wild East - Town", "Salvaje Este - Pueblo");
    ds_map_add(cuartos, "Wild East - Outskirts", "Salvaje Este - Afueras");
    ds_map_add(cuartos, "Wild East - Sunnyside", "Salvaje Este - Lado Sol");
    ds_map_add(cuartos, "Steamw. - Generator", "Steamw. - Generador");
    ds_map_add(cuartos, "Steamw. - Raised Path", "Steamw. - Camino Elevado");
    ds_map_add(cuartos, "Steamw. - Lake", "Steamw. - Lago");
    ds_map_add(cuartos, "Steamw. - Offices", "Steamw. - Oficinas");
    ds_map_add(cuartos, "Steamw. - ???", "Steamw. - ???");
    ds_map_add(cuartos, "Steamw. - Commons", "Steamw. - Comúnes");
    ds_map_add(cuartos, "Greenhouse", "Invernadero");
    ds_map_add(cuartos, "Steamw. - Crossroads", "Steamw. - Cruces");
    ds_map_add(cuartos, "Steamw. - Laboratory", "Steamw. - Laboratorio");
    ds_map_add(cuartos, "Steamw. - Botany Hall", "Steamw. - Botánico");
    ds_map_add(cuartos, "Factory - Lobby", "Fábrica - Vestíbulo");
    ds_map_add(cuartos, "Factory - Offices", "Fábrica - Oficinas");
    ds_map_add(cuartos, "The Furnace", "El Horno");
    ds_map_add(cuartos, "A Road Ahead", "Camino por Delante");
    ds_map_add(cuartos, "Estate", "Propiedad");
    ds_map_add(cuartos, "Apt. Complex", "Complejo de Apartamentos");
    ds_map_add(cuartos, "New Home", "Nuevo Hogar");

    resultado = cuarto_actual

    if ds_map_exists(cuartos, cuarto_actual){
        resultado = ds_map_find_value(cuartos, cuarto_actual)
        ds_map_destroy(cuartos)
    }
    return resultado
}

