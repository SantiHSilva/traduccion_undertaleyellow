message[0] = "¡Buen trabajo,#amigo! En caso de que#te golpeen, ¡puedo#GUARDAR tu progreso!"
message[1] = "Eso significa que#si pasa algo malo,# puedo hacer#que no te pase a ti."
portrait[0] = 1934
portrait[1] = 1934
message_end = 1
message_current = 0
message_draw = ""
increase = global.text_speed
characters = 0
hold = 0
message_length = string_length(message[message_current])
script_execute(gml_Script_scr_generate_text_counters)
