function scr_item_use_text_yellow() //gml_Script_scr_item_use_text_yellow
{
    if live_call()
        return global.live_result;
    var item_use_hold = global.item_use_hold
    var item_slot = item_use_hold.item_slot
    var current_hp_self = global.current_hp_self
    var max_hp_self = global.max_hp_self
    var current_pp_self = global.current_pp_self
    var max_pp_self = global.max_pp_self
    var current_sp_self = global.current_sp_self
    var max_sp_self = global.max_sp_self
    var current_rp_self = global.current_rp_self
    var max_rp_self = global.max_rp_self
    var execute_hp = 0
    var execute_pp = 0
    var execute_sp = 0
    var execute_rp = 0
    if (item_slot == "Missing Poster" || item_slot == "Necklace")
    {
        message[0] = "* (No puedes utilizar este#  objeto.)"
        item_use_hold.item_category = "nonconsumable"
        item_use_hold.item_type = "story"
    }
    else if (item_slot == "Snowdin Map")
    {
        message[0] = "* (Su precisión parece#  comprometida.)"
        message[1] = "* (No estas seguro de cómo#  usarlo.)"
        item_use_hold.item_category = "nonconsumable"
        item_use_hold.item_type = "story"
    }
    else if (item_slot == "Matches")
    {
        message[0] = "* (No estás seguro de cómo#  encender un fuego con#  ellos de forma segura.)"
        message[1] = "* (Ellos posiblemente estén trabajando en una#  emergencia.)"
        item_use_hold.item_category = "nonconsumable"
        item_use_hold.item_type = "story"
    }
    else if (item_slot == "Lukewarm Coffee")
    {
        message[0] = "* (Mejor no beberlo.)"
        message[1] = "* (Podrías obtener café caliente#  en algún lado.)"
        item_use_hold.item_category = "nonconsumable"
        item_use_hold.item_type = "story"
    }
    else if (item_slot == "Soggy Mitten" || item_slot == "Pickaxe")
    {
        message[0] = "* (No puedes pensar en un posible#  uso para eso.)"
        item_use_hold.item_category = "nonconsumable"
        item_use_hold.item_type = "story"
    }
    else if (item_slot == "Videotape")
        message[0] = "* (No sabes qué tipo de uso puedas darle a#  esto.)"
    else if (item_slot == "Lemonade")
    {
        message[0] = (("* (Tomas la " + obtenerItemSpanish(string(item_slot))) + ".)")
        message[1] = "* (Está muy ácida.)"
        item_use_hold.item_category = "consumable"
        item_use_hold.item_type = "healing"
        item_use_hold.item_number = scr_item_stats_heal(item_slot)
        item_use_hold.item_sound = 390
        item_use_hold.con_keep_previous = 1
        item_use_hold.con_message_number = 2
        execute_hp = 1
    }
    else if (item_slot == "Candy Corn")
    {
        message[0] = (("* (Comes el " + obtenerItemSpanish(string(item_slot))) + ".)")
        message[1] = "* (Ahora ya sabes porque#  fue desechado.)"
        item_use_hold.item_category = "consumable"
        item_use_hold.item_type = "healing"
        item_use_hold.item_number = scr_item_stats_heal(item_slot)
        item_use_hold.item_sound = 390
        item_use_hold.con_keep_previous = 1
        item_use_hold.con_message_number = 2
        execute_hp = 1
    }
    else if (item_slot == "Corn Dog")
    {
        message[0] = (("* (Te sampas el " + obtenerItemSpanish(string(item_slot))) + ".)")
        message[1] = "* (No puedes evitar sentirte#  mal por hacerlo.)"
        item_use_hold.item_category = "consumable"
        item_use_hold.item_type = "healing"
        item_use_hold.item_number = scr_item_stats_heal(item_slot)
        item_use_hold.item_sound = 390
        item_use_hold.con_keep_previous = 1
        item_use_hold.con_message_number = 2
        execute_hp = 1
    }
    else if (item_slot == "Sponge Cake")
    {
        message[0] = "* (Lames el glaseado de#  la esponja.)"
        message[1] = "* (¡Tu boca se siente limpiesita!)"
        item_use_hold.item_category = "consumable"
        item_use_hold.item_type = "healing"
        item_use_hold.item_number = scr_item_stats_heal(item_slot)
        item_use_hold.item_sound = 390
        item_use_hold.con_keep_previous = 1
        item_use_hold.con_message_number = 2
        execute_hp = 1
    }
    else if (item_slot == "Homemade Cookie")
    {
        message[0] = (("* (Te sampas el " + obtenerItemSpanish(string(item_slot))) + ".)")
        item_use_hold.item_category = "consumable"
        item_use_hold.item_type = "healing"
        item_use_hold.item_number = scr_item_stats_heal(item_slot)
        item_use_hold.item_sound = 390
        item_use_hold.con_keep_previous = 1
        item_use_hold.con_message_number = 1
        execute_hp = 1
    }
    else if (item_slot == "Hot Pop")
    {
        message[0] = "* (Comes la Paleta de Chocolate#  caliente.)"
        message[1] = "* (Tiene el distintivo sabor#  a algo que fue caliente.)"
        item_use_hold.item_category = "consumable"
        item_use_hold.item_type = "healing"
        item_use_hold.item_number = scr_item_stats_heal(item_slot)
        item_use_hold.item_sound = 390
        item_use_hold.con_keep_previous = 1
        item_use_hold.con_message_number = 2
        execute_hp = 1
    }
    else if (item_slot == "Lukewarm Pop")
    {
        message[0] = "* (Comes la Paleta de Chocolate#  tibia.)"
        message[1] = "* (Tiene el distintivo sabor#  a caliente y descomposición.)"
        message[2] = "* (No es bueno.)"
        item_use_hold.item_category = "consumable"
        item_use_hold.item_type = "healing"
        item_use_hold.item_number = scr_item_stats_heal(item_slot)
        item_use_hold.item_sound = 390
        item_use_hold.con_keep_previous = 1
        item_use_hold.con_message_number = 3
        execute_hp = 1
    }
    else if (item_slot == "Cold Pop")
    {
        message[0] = "* (Comes la Paleta de Chocolate#  frío.)"
        message[1] = "* (Tiene el distintivo sabor#  de cosas realmente heladas.)"
        item_use_hold.item_category = "consumable"
        item_use_hold.item_type = "healing"
        item_use_hold.item_number = scr_item_stats_heal(item_slot)
        item_use_hold.item_sound = 390
        item_use_hold.con_keep_previous = 1
        item_use_hold.con_message_number = 2
        execute_hp = 1
    }
    else if (item_slot == "Hndw Coffee")
    {
        message[0] = "* (Tomas valor y bebes el#  Café Honeydew hirviente.)"
        message[1] = "* (Sientes que tus papilas#  gustativas se queman.)"
        item_use_hold.item_category = "consumable"
        item_use_hold.item_type = "healing"
        item_use_hold.item_number = scr_item_stats_heal(item_slot)
        item_use_hold.item_sound = 390
        item_use_hold.con_keep_previous = 1
        item_use_hold.con_message_number = 2
        execute_hp = 1
    }
    else if (item_slot == "Adult Soda")
    {
        message[0] = "* (Tomas un sorbo de la soda de#  adulto.)"
        message[1] = "* (...)"
        message[2] = "* (Sabe a agua.)"
        item_use_hold.item_category = "consumable"
        item_use_hold.item_type = "healing"
        item_use_hold.item_number = scr_item_stats_heal(item_slot)
        item_use_hold.item_sound = 390
        item_use_hold.con_keep_previous = 1
        item_use_hold.con_message_number = 3
        execute_hp = 1
    }
    else if (item_slot == "Hndw Pancake")
    {
        message[0] = "* (Comes el pancake.)"
        message[1] = "* (¡El jarabe es muy dulce!)"
        item_use_hold.item_category = "consumable"
        item_use_hold.item_type = "healing"
        item_use_hold.item_number = scr_item_stats_heal(item_slot)
        item_use_hold.item_sound = 390
        item_use_hold.con_keep_previous = 1
        item_use_hold.con_message_number = 2
        execute_hp = 1
    }
    else if (item_slot == "G.B. Bear")
    {
        message[0] = "* (Comes la galleta.)"
        message[1] = "* (Sientes como si te mirara#  mientras la comes.)"
        item_use_hold.item_category = "consumable"
        item_use_hold.item_type = "healing"
        item_use_hold.item_number = scr_item_stats_heal(item_slot)
        item_use_hold.item_sound = 390
        item_use_hold.con_keep_previous = 1
        item_use_hold.con_message_number = 2
        execute_hp = 1
    }
    else if (item_slot == "Packing Peanuts")
    {
        message[0] = "* (Te comes el maní del paquete.)"
        message[1] = "* (Aparte del sabor, la textura y#  el potencial riesgo a la#  salud. No están tan mal)"
        item_use_hold.item_category = "consumable"
        item_use_hold.item_type = "healing"
        item_use_hold.item_number = scr_item_stats_heal(item_slot)
        item_use_hold.item_sound = 390
        item_use_hold.con_keep_previous = 0
        item_use_hold.con_message_number = 2
        execute_hp = 1
    }
    else if (item_slot == "Trail Mix")
    {
        message[0] = "* (Comes los frutos secos.)"
        message[1] = "* (Todo lo que saboreas son pasas.)"
        item_use_hold.item_category = "consumable"
        item_use_hold.item_type = "healing"
        item_use_hold.item_number = scr_item_stats_heal(item_slot)
        item_use_hold.item_sound = 390
        item_use_hold.con_keep_previous = 0
        item_use_hold.con_message_number = 2
        execute_hp = 1
    }
    else if (item_slot == "Ice Tea")
    {
        message[0] = "* (Bebes el vaso de té. Está muy#  aguado.)"
        item_use_hold.item_category = "consumable"
        item_use_hold.item_type = "healing"
        item_use_hold.item_number = scr_item_stats_heal(item_slot)
        item_use_hold.item_sound = 390
        item_use_hold.con_keep_previous = 0
        item_use_hold.con_message_number = 1
        execute_hp = 1
    }
    else if (item_slot == "Green Tea")
    {
        message[0] = "* (Bebes el Té Verde. Se siente#  tóxico.)"
        item_use_hold.item_category = "consumable"
        item_use_hold.item_type = "healing"
        item_use_hold.item_number = scr_item_stats_heal(item_slot)
        item_use_hold.item_sound = 390
        item_use_hold.con_keep_previous = 0
        item_use_hold.con_message_number = 1
        execute_hp = 1
    }
    else if (item_slot == "Sea Tea")
    {
        message[0] = "* (Bebes el Té de Mar. ¡La#  velocidad de tu ALMA#  aumenta!)"
        item_use_hold.item_category = "consumable"
        item_use_hold.item_type = "healing"
        item_use_hold.item_number = scr_item_stats_heal(item_slot)
        item_use_hold.item_sound = 390
        item_use_hold.con_keep_previous = 0
        item_use_hold.con_message_number = 1
        execute_hp = 1
        global.current_sp_self += 1
    }
    else if (item_slot == "Fruitcake")
    {
        message[0] = "* (Comes el pastel de frutas.#  ¡Las Swealterstones queman#  tu garganta!)"
        item_use_hold.item_category = "consumable"
        item_use_hold.item_type = "healing"
        item_use_hold.item_number = scr_item_stats_heal(item_slot)
        item_use_hold.item_sound = 390
        item_use_hold.con_keep_previous = 0
        item_use_hold.con_message_number = 1
        execute_hp = 1
    }
    else if (item_slot == "Spider Donut")
    {
        message[0] = "* (No te preocupes, la araña no#  lo hizo.)"
        item_use_hold.item_category = "consumable"
        item_use_hold.item_type = "healing"
        item_use_hold.item_number = scr_item_stats_heal(item_slot)
        item_use_hold.item_sound = 390
        item_use_hold.con_keep_previous = 0
        item_use_hold.con_message_number = 1
        execute_hp = 1
    }
    else if (item_slot == "Icewater")
    {
        message[0] = "* (Bebes el Aguhelada.#  Definitivamente sabe a algo pero#  no sabes describirlo.)"
        item_use_hold.item_category = "consumable"
        item_use_hold.item_type = "healing"
        item_use_hold.item_number = scr_item_stats_heal(item_slot)
        item_use_hold.item_sound = 390
        item_use_hold.con_keep_previous = 0
        item_use_hold.con_message_number = 1
        execute_hp = 1
    }
    else if (item_slot == "Oasis Latte")
    {
        message[0] = "* (Bebes el Latte...)"
        item_use_hold.item_category = "consumable"
        item_use_hold.item_type = "healing"
        item_use_hold.item_number = scr_item_stats_heal(item_slot)
        item_use_hold.item_sound = 390
        item_use_hold.con_keep_previous = 0
        item_use_hold.con_message_number = 1
        execute_hp = 1
    }
    else if (item_slot == "Cnm. Cookie")
    {
        message[0] = "* (Comes la galleta...)"
        item_use_hold.item_category = "consumable"
        item_use_hold.item_type = "healing"
        item_use_hold.item_number = scr_item_stats_heal(item_slot)
        item_use_hold.item_sound = 390
        item_use_hold.con_keep_previous = 0
        item_use_hold.con_message_number = 1
        execute_hp = 1
    }
    else if (item_slot == "Root Beer")
    {
        message[0] = "* (Te bajas la Cerveza de Raíz.#  ¡La carbonatación hormiguea!)"
        item_use_hold.item_category = "consumable"
        item_use_hold.item_type = "healing"
        item_use_hold.item_number = scr_item_stats_heal(item_slot)
        item_use_hold.item_sound = 390
        item_use_hold.con_keep_previous = 0
        item_use_hold.con_message_number = 1
        execute_hp = 1
    }
    else if (item_slot == "Feisty Slider")
    {
        message[0] = "* (Comes la Hamb. Feisty. Se#  parece al equipo, su sabor es#  ... ambiocoso.)"
        item_use_hold.item_category = "consumable"
        item_use_hold.item_type = "healing"
        item_use_hold.item_number = scr_item_stats_heal(item_slot)
        item_use_hold.item_sound = 390
        item_use_hold.con_keep_previous = 0
        item_use_hold.con_message_number = 1
        execute_hp = 1
    }
    else if (item_slot == "Gunpowder")
    {
        message[0] = "* (Pones la pólvora en tu boca y#  casi mueres asfixiado.) "
        message[1] = "* (...HP recuperados totalmente.)"
        item_use_hold.item_category = "consumable"
        item_use_hold.item_type = "healing"
        item_use_hold.item_number = scr_item_stats_heal(item_slot)
        item_use_hold.item_sound = 390
        item_use_hold.con_keep_previous = 0
        item_use_hold.con_message_number = 2
        execute_hp = 1
    }
    else if (item_slot == "G. Pear")
    {
        message[0] = "* (Comes la Pera Dorada.)"
        message[1] = "* (El inmenso sabor abraza#  a tus papilas gustativas.)"
        message[2] = "* (En general... nada mal.)"
        item_use_hold.item_category = "consumable"
        item_use_hold.item_type = "protection"
        item_use_hold.item_number = scr_item_stats_protection(item_slot)
        item_use_hold.item_sound = 390
        item_use_hold.con_keep_previous = 1
        item_use_hold.con_message_number = 3
        execute_pp = 1
    }
    else if (item_slot == "G. Coffee")
    {
        message[0] = "* (Tragas el Mitad y#  Mitad Café Dorado.)"
        message[1] = "* (Sabe a... café normal.)"
        item_use_hold.item_category = "consumable"
        item_use_hold.item_type = "speed"
        item_use_hold.item_number = scr_item_stats_speed(item_slot)
        item_use_hold.item_sound = 390
        item_use_hold.con_keep_previous = 1
        item_use_hold.con_message_number = 2
        execute_sp = 1
    }
    else if (item_slot == "G. Cactus")
    {
        message[0] = "* (Le das un buen mordizco#  al cactus.)"
        message[1] = "* (...)"
        message[2] = "* (Te muerde de vuelta.)"
        item_use_hold.item_category = "consumable"
        item_use_hold.item_type = "restore"
        item_use_hold.item_number = scr_item_stats_restore(item_slot)
        item_use_hold.item_sound = 390
        item_use_hold.con_keep_previous = 1
        item_use_hold.con_message_number = 3
        execute_rp = 1
    }
    else if (item_slot == "Moss Salad")
    {
        message[0] = "* (Te llenas de valor y comes#  la ensalada de musgo.)"
        message[1] = "* (La textura solo puede ser#  descrita como \"insolación\".)"
        item_use_hold.item_category = "consumable"
        item_use_hold.item_type = "healing"
        item_use_hold.item_sound = 390
        item_use_hold.item_number = scr_item_stats_heal(item_slot)
        item_use_hold.con_keep_previous = 0
        item_use_hold.con_message_number = 2
        execute_hp = 1
    }
    else if (item_slot == "Grassy Fries")
    {
        message[0] = "* (Te tapas la nariz y comes#  las papas fritas.)"
        message[1] = "* (¿A esto realmente ha#  llegado la vida?)"
        item_use_hold.item_category = "consumable"
        item_use_hold.item_type = "healing"
        item_use_hold.item_sound = 390
        item_use_hold.item_number = scr_item_stats_heal(item_slot)
        item_use_hold.con_keep_previous = 0
        item_use_hold.con_message_number = 2
        execute_hp = 1
    }
    else if (item_slot == "Flower Stew")
    {
        message[0] = "* (Te aseguras de que Flowey#  no te vea antes de probar.)"
        message[1] = "* (Mmm... grueso...)"
        item_use_hold.item_category = "consumable"
        item_use_hold.item_type = "healing"
        item_use_hold.item_sound = 390
        item_use_hold.item_number = scr_item_stats_heal(item_slot)
        item_use_hold.con_keep_previous = 1
        item_use_hold.con_message_number = 2
        execute_hp = 1
    }
    else if (item_slot == "Gravity Granola")
    {
        message[0] = "* (Comes las Granolas Gravedad.)"
        message[1] = "* (¡Realmente puedes saborear#  los 9.8 metros!)"
        item_use_hold.item_category = "consumable"
        item_use_hold.item_type = "healing"
        item_use_hold.item_sound = 390
        item_use_hold.item_number = scr_item_stats_heal(item_slot)
        item_use_hold.con_keep_previous = 0
        item_use_hold.con_message_number = 2
        execute_hp = 1
    }
    else if (item_slot == "Dihydrogen Monoxide")
    {
        message[0] = "* (Bebes el H2O. Sabe un poco#  a limpiador de vidrios...)"
        item_use_hold.item_category = "consumable"
        item_use_hold.item_type = "healing"
        item_use_hold.item_sound = 390
        item_use_hold.item_number = scr_item_stats_heal(item_slot)
        item_use_hold.con_keep_previous = 0
        item_use_hold.con_message_number = 1
        execute_hp = 1
    }
    else if (item_slot == "Popato Chisps")
    {
        message[0] = "* (Comes las Papitas Fritas.#  El crujir es ensordecedor.)"
        item_use_hold.item_category = "consumable"
        item_use_hold.item_type = "healing"
        item_use_hold.item_sound = 390
        item_use_hold.item_number = scr_item_stats_heal(item_slot)
        item_use_hold.con_keep_previous = 0
        item_use_hold.con_message_number = 1
        execute_hp = 1
    }
    else if (item_slot == "Beef Jerky")
    {
        message[0] = "* (Te comes la carne seca.)"
        message[1] = "* (Que sabor tan clásico.)"
        item_use_hold.item_category = "consumable"
        item_use_hold.item_type = "healing"
        item_use_hold.item_sound = 390
        item_use_hold.item_number = scr_item_stats_heal(item_slot)
        item_use_hold.con_keep_previous = 1
        item_use_hold.con_message_number = 1
        execute_hp = 1
    }
    else if (item_slot == "Cake")
    {
        message[0] = "* (Disfrutas muchos trozos de#  torta.)"
        message[1] = "* (¡Delicioso!)"
        item_use_hold.item_category = "consumable"
        item_use_hold.item_type = "healing"
        item_use_hold.item_sound = 390
        item_use_hold.item_number = scr_item_stats_heal(item_slot)
        item_use_hold.con_keep_previous = 1
        item_use_hold.con_message_number = 1
        execute_hp = 1
    }
    else if (item_slot == "Floral Cupcake")
    {
        message[0] = "* (Disfrutas la Magdalena#  Floral.)"
        message[1] = "* (¡Que rico sabor!)"
        item_use_hold.item_category = "consumable"
        item_use_hold.item_type = "healing"
        item_use_hold.item_sound = 390
        item_use_hold.item_number = scr_item_stats_heal(item_slot)
        item_use_hold.con_keep_previous = 1
        item_use_hold.con_message_number = 2
        execute_hp = 1
    }
    else if (item_slot == "Monster Candy")
    {
        message[0] = "* (Comes el Caramelo Monstruo.)"
        message[1] = "* (El sabor es ligeramente#  familiar...)"
        item_use_hold.item_category = "consumable"
        item_use_hold.item_type = "healing"
        item_use_hold.item_sound = 390
        item_use_hold.item_number = scr_item_stats_heal(item_slot)
        item_use_hold.con_keep_previous = 1
        item_use_hold.con_message_number = 2
        execute_hp = 1
    }
    else if (item_slot == "Monster Candy+")
    {
        message[0] = "* (Pones el Caramelo Monstruo+ en#  tu boca.)"
        message[1] = "* (La dulzura fuerte desafía#  tus papilas gustativas..)"
        item_use_hold.item_category = "consumable"
        item_use_hold.item_type = "healing"
        item_use_hold.item_sound = 390
        item_use_hold.item_number = scr_item_stats_heal(item_slot)
        item_use_hold.con_keep_previous = 1
        item_use_hold.con_message_number = 2
        execute_hp = 1
    }
    else if (item_slot == "C-B Strudel")
    {
        message[0] = "* (Saboreas el Pudín C-B.)"
        message[1] = "* (El sabor es extrañamente#  familiar...)"
        item_use_hold.item_category = "consumable"
        item_use_hold.item_type = "healing"
        item_use_hold.item_sound = 390
        item_use_hold.item_number = scr_item_stats_heal(item_slot)
        item_use_hold.con_keep_previous = 1
        item_use_hold.con_message_number = 2
        execute_hp = 1
    }
    else if (item_slot == "Hot Dog")
    {
        message[0] = "* (Te sampas el perro caliente.)#  (Mmm, ¡el punto justo!)"
        item_use_hold.item_category = "consumable"
        item_use_hold.item_type = "healing"
        item_use_hold.item_sound = 390
        item_use_hold.item_number = scr_item_stats_heal(item_slot)
        item_use_hold.con_keep_previous = 1
        item_use_hold.con_message_number = 1
        execute_hp = 1
    }
    else if (item_slot == "Corn Chowder")
    {
        message[0] = "* (Bebes nerviosamente la Sopa#  de Maíz.)"
        message[1] = "* (...Podía ser peor.)"
        item_use_hold.item_category = "consumable"
        item_use_hold.item_type = "healing"
        item_use_hold.item_sound = 390
        item_use_hold.item_number = scr_item_stats_heal(item_slot)
        item_use_hold.con_keep_previous = 1
        item_use_hold.con_message_number = 2
        execute_hp = 1
    }
    else if (item_slot == "Toy Gun")
    {
        message[0] = (("* (Equipaste " + obtenerItemSpanish(string(item_slot))) + ".)")
        item_use_hold.item_category = "equip"
        item_use_hold.item_type = "weapon"
        item_use_hold.item_sound = 388
    }
    else if (item_slot == "Wild Revolver")
    {
        message[0] = (("* (Equipaste " + obtenerItemSpanish(string(item_slot))) + ".)")
        item_use_hold.item_category = "equip"
        item_use_hold.item_type = "weapon"
        item_use_hold.item_sound = 388
    }
    else if (item_slot == "Worn Hat")
    {
        message[0] = (("* (Equipaste " + obtenerItemSpanish(string(item_slot))) + ".)")
        item_use_hold.item_category = "equip"
        item_use_hold.item_type = "armor"
        item_use_hold.item_sound = 388
    }
    else if (item_slot == "Rubber Ammo")
    {
        message[0] = "* (Cargas las Balas de Goma en#  tu pistola.)"
        item_use_hold.item_category = "equip"
        item_use_hold.item_type = "ammo"
        item_use_hold.item_sound = 388
    }
    else if (item_slot == "Pebble Ammo")
    {
        message[0] = "* (Cargas tu pistola con#  las piedras.)"
        message[1] = "* (Ahora se siente más#  pesada.)"
        item_use_hold.item_category = "equip"
        item_use_hold.item_type = "ammo"
        item_use_hold.item_sound = 388
    }
    else if (item_slot == "Silver Ammo")
    {
        message[0] = "* (Cargas las Balas de Plata#  en tu pistola.)"
        message[1] = "* (Los pétalos brillan en#  la luz.)"
        item_use_hold.item_category = "equip"
        item_use_hold.item_type = "ammo"
        item_use_hold.item_sound = 388
    }
    else if (item_slot == "Ice Pellets")
    {
        message[0] = "* (Cargaste las Balas Heladas.)"
        message[1] = "* (Tu pistola ahora hace#  frio al contacto.)"
        item_use_hold.item_category = "equip"
        item_use_hold.item_type = "ammo"
        item_use_hold.item_sound = 388
    }
    else if (item_slot == "Cff Bean Ammo")
    {
        message[0] = "* (Decides cargar los#  Granos de café.)"
        message[1] = "* (Tu arma ahora huele#  delicioso.)"
        item_use_hold.item_category = "equip"
        item_use_hold.item_type = "ammo"
        item_use_hold.item_sound = 388
    }
    else if (item_slot == "Glass Ammo")
    {
        message[0] = "* (Cargas con cuidado el Vidrio#  en tu pistola.)"
        message[1] = "* (¡Phew! ¡Sin cortes!)"
        item_use_hold.item_category = "equip"
        item_use_hold.item_type = "ammo"
        item_use_hold.item_sound = 388
    }
    else if (item_slot == "Flint")
    {
        message[0] = "* (Cargas el Pedernal#  en tu pistola.)"
        message[1] = "* (¡Se puede iniciar un#  incendio con este!)"
        item_use_hold.item_category = "equip"
        item_use_hold.item_type = "ammo"
        item_use_hold.item_sound = 388
    }
    else if (item_slot == "Nails")
    {
        message[0] = "* (Decidiste cargar los Clavos#  dentro de tu pistola.)"
        item_use_hold.item_category = "equip"
        item_use_hold.item_type = "ammo"
        item_use_hold.item_sound = 388
    }
    else if (item_slot == "Friendliness Pellets")
    {
        message[0] = "* (Decidiste cargar los Pétalos de#  amistad en tu pistola.)"
        item_use_hold.item_category = "equip"
        item_use_hold.item_type = "ammo"
        item_use_hold.item_sound = 388
    }
    else if (item_slot == "Super Ammo")
    {
        message[0] = "* (Decidiste cargar las Súper Balas.)"
        message[1] = "* (Tu pistola se siente más liviana#  Más que tu consciencia...)"
        item_use_hold.item_category = "equip"
        item_use_hold.item_type = "ammo"
        item_use_hold.item_sound = 388
    }
    else if (item_slot == "Patch")
    {
        message[0] = "* (No puedes coser el Parche#  atrás de tu sombrero.)"
        item_use_hold.item_category = "nonconsumable"
        item_use_hold.item_type = "story"
    }
    else if (item_slot == "Feather")
    {
        message[0] = (("* (Pegas la " + obtenerItemSpanish(string(item_slot))) + " en#  tu sombrero.)")
        message[1] = "* (Te hace sentir orgulloso.)"
        item_use_hold.item_category = "equip"
        item_use_hold.item_type = "accessory"
        item_use_hold.item_sound = 388
    }
    else if (item_slot == "G. Bandana")
    {
        message[0] = "* (En un segundo, amarras el#  Pañuelo Dorado alrededor#  de tu cuello.)"
        message[1] = "* (Sientes que ahora puedes#  aguantar lo que sea.)"
        item_use_hold.item_category = "equip"
        item_use_hold.item_type = "accessory"
        item_use_hold.item_sound = 388
    }
    else if (item_slot == "Honeydew Pin")
    {
        message[0] = (("* (Fijas el " + obtenerItemSpanish(string(item_slot))) + "#  a tu sombrero.)")
        item_use_hold.item_category = "equip"
        item_use_hold.item_type = "accessory"
        item_use_hold.item_sound = 388
    }
    else if (item_slot == "Band Merch Pin")
    {
        message[0] = "* (Colocas el Broche de la#  Banda en tu sombrero.)"
        item_use_hold.item_category = "equip"
        item_use_hold.item_type = "accessory"
        item_use_hold.item_sound = 388
    }
    else if (item_slot == "Fancy Holster")
    {
        message[0] = "* (Equipas con orgullo la#  Funda Elegante.)"
        message[1] = "* (Estás listo para todo#  desde ahora!)"
        item_use_hold.item_category = "equip"
        item_use_hold.item_type = "accessory"
        item_use_hold.item_sound = 388
    }
    else if (item_slot == "Steel Buckle")
    {
        message[0] = "* (Conectas la hebilla de acero#  a tu pantalón.)"
        message[1] = "* (¡Tus pantalones se sienten más#  resistentes que antes!)"
        item_use_hold.item_category = "equip"
        item_use_hold.item_type = "accessory"
        item_use_hold.item_sound = 388
    }
    else if (item_slot == "Safety Jacket")
    {
        message[0] = "* (Te pones la impresionante#  Chaqueta amarilla resaltadora.)"
        message[1] = "* (¡Estás totalmente listo para preocuparte#  por los negocios!)"
        item_use_hold.item_category = "equip"
        item_use_hold.item_type = "accessory"
        item_use_hold.item_sound = 388
    }
    else if (item_slot == "Golden Scarf")
    {
        message[0] = "* (Te colocas la Bufanda Dorada.#* Tu tremendo gusto por el estilo#  hace que los enemigos te contemplen.)"
        item_use_hold.item_category = "equip"
        item_use_hold.item_type = "accessory"
        item_use_hold.item_sound = 388
    }
    else if (item_slot == "Safety Goggles")
    {
        message[0] = "* (Envuelves las Gafas de#  Seguridad alrededor de#  tu sombrero.)"
        message[1] = "* (Es como si tuviera ojos#  ahora.)"
        item_use_hold.item_category = "equip"
        item_use_hold.item_type = "accessory"
        item_use_hold.item_sound = 388
    }
    else if (item_slot == "Delta Rune Patch")
    {
        message[0] = "* (Colocas el parche en tu chaleco#  y comienzas a sentir#  algo...)"
        message[1] = "* (Las inquebrantables esperanzas#  y sueños de los monstruos.)"
        item_use_hold.item_category = "equip"
        item_use_hold.item_type = "accessory"
        item_use_hold.item_sound = 388
    }
    else if (item_slot == "Silver Scarf")
    {
        message[0] = "* (Envuelves la Bufanda Plateada#  alrededor de tu cuello.)"
        message[1] = "* (¡Qué acogedora!)"
        item_use_hold.item_category = "equip"
        item_use_hold.item_type = "accessory"
        item_use_hold.item_sound = 388
    }
    else if (item_slot == "H. Acid")
    {
        audio_stop_all()
        global.sworks_flag[45] = 1
        global.heart_battle_fighting_x = 320
        global.heart_battle_fighting_y = 240
        room_goto(rm_death_screen)
        message[0] = "* (No puedes utilizar este#  objeto.)"
        item_use_hold.item_category = "nonconsumable"
        item_use_hold.item_type = "story"
        item_use_hold.item_sound = 388
    }
    if (global.route == 3)
    {
        message = 0
        message[0] = ""
        if (item_type == "accessory" || item_type == "ammo")
            message[0] = (("Equipas el " + obtenerItemSpanish(item_slot)) + ".")
        item_use_hold.con_message_number = 1
    }
    if (item_use_hold.con_keep_previous == 1 && global.route != 3)
        message_add = "##"
    else
        message_add = ""
    if (execute_hp == 1)
    {
        var cmsgn = item_use_hold.con_message_number
        if ((current_hp_self + item_use_hold.item_number) < max_hp_self)
            message[cmsgn] = (((message_add + "* (¡Recuperaste ") + string(item_use_hold.item_number)) + " PV!)")
        else
            message[cmsgn] = (message_add + "* (Tus PV se llenaron.)")
    }
    if (execute_pp == 1)
    {
        cmsgn = item_use_hold.con_message_number
        if ((current_pp_self + item_use_hold.item_number) < max_pp_self)
            message[cmsgn] = (((message_add + "* (¡Recuperaste ") + string(item_use_hold.item_number)) + " PP!)")
        else
            message[cmsgn] = (message_add + "* (Tus PP se llenaron.)")
    }
    if (execute_sp == 1)
    {
        cmsgn = item_use_hold.con_message_number
        if ((current_sp_self + item_use_hold.item_number) < max_sp_self)
            message[cmsgn] = (((message_add + "* (¡Recuperaste ") + string(item_use_hold.item_number)) + " SP!)")
        else
            message[cmsgn] = (message_add + "* (Tu SP se llenó.)")
    }
    if (execute_rp == 1)
    {
        cmsgn = item_use_hold.con_message_number
        if ((current_rp_self + item_use_hold.item_number) < max_rp_self)
            message[cmsgn] = (((message_add + "* Te vas a curar por ") + string(item_use_hold.item_number)) + " turnos!")
        else
            message[cmsgn] = (message_add + "* (Tu RP fue maximizado.)")
    }
}

