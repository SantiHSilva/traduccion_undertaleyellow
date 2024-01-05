function obtenerEmailSpanish(argument0) //gml_Script_obtenerEmailSpanish
{
    abuscar = argument0
    lista = ds_map_create()

    ds_map_add(lista, "Intro Letter", "Introducción");
    ds_map_add(lista, "Spam Letter 1", "Correo Spam 1");
    ds_map_add(lista, "Spam Letter 2", "Correo Spam 2");
    ds_map_add(lista, "Spam Letter 3", "Correo Spam 3");
    ds_map_add(lista, "Spam Letter 4", "Correo Spam 4");
    ds_map_add(lista, "Spam Letter 5", "Correo Spam 5");
    ds_map_add(lista, "Spam Letter 6", "Correo Spam 6");
    ds_map_add(lista, "Spam Letter 7", "Correo Spam 7");
    ds_map_add(lista, "Spam Letter 8", "Correo Spam 8");
    ds_map_add(lista, "Spam Letter 9", "Correo Spam 9");
    ds_map_add(lista, "Slurpy Letter", "Carta de Slurpy");
    ds_map_add(lista, "Shufflers Letter", "Carta de los Shufflers");
    ds_map_add(lista, "Dalv Letter", "Carta de Dalv");
    ds_map_add(lista, "Mo Letter", "Carta de Mo");
    ds_map_add(lista, "Bullet Points", "Puntos de Balas");
    ds_map_add(lista, "PSA", "ASP");
    ds_map_add(lista, "Slurpy Letter 2", "Carta de Slurpy 2");
    ds_map_add(lista, "Starlo (Urgent)", "Starlo (Urgente)");
    ds_map_add(lista, "Starlo Update", "Starlo Actualización");
    ds_map_add(lista, "MAIL???", "CORREO???");
    ds_map_add(lista, "Ceroba (Important)", "Ceroba (Importante)");
    ds_map_add(lista, "Martelt's Letter", "Carta de Martlet");
    ds_map_add(lista, "Mixin' It Up! (Essay)", "¡Mézclalo! (Instructivo)");
    ds_map_add(lista, "Resort Letter", "Carta del Resort");
    ds_map_add(lista, "Missing Poster", "Poster Desaparecidos");
    ds_map_add(lista, "Steamworks ID", "Ident. Steamworks");

    resultado = abuscar

    if ds_map_exists(lista, abuscar){
        resultado = ds_map_find_value(lista, abuscar)
        ds_list_destroy(lista)
    }
    return resultado;
}

