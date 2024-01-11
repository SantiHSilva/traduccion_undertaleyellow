function scr_item(argument0) //gml_Script_scr_item
{
    nm = argument0

    if(nm == "Ensal. Musgo"){
        nm = "Moss Salad"
    } else if (nm == "Pata. Frit."){
        nm = "Grassy Fries"
    } else if (nm == "G. de Flores"){
        nm = "Flower Stew"
    }

    var i = 1
    while (i <= 8)
    {
        if (global.item_slot[i] == "Nothing")
        {
            global.item_slot[i] = nm
            return 1;
        }
        else
        {
            if (i == 8)
                return 0;
            i++
            continue
        }
    }
}

