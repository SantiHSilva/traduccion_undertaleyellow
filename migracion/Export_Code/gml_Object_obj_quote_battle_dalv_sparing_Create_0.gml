message[0] = "¿Quieres que...#te... estreche#la mano?"
message[1] = "¿Incluso después#de que te#atacara sin razón?"
message[2] = "Pero eso es...#un signo#de amistad..."
message[3] = "Eres humano,#¿verdad?#¿Es lo mismo de#donde vienes?"
message[4] = "No estoy seguro...#Nunca esperé#encontrarme con#otro humano."
message[5] = "Y mucho menos#hacerme amigo#de ellos..."
message[6] = "¡No me#malinterpretes!#¡Me encantaría#tener un amigo!"
message[7] = "...quiero decir. No#recuerdo lo que#implicaba..."
message[8] = "Supongo que lo#intentaré."
portrait[0] = 1768
portrait[1] = 1763
portrait[2] = 1765
portrait[3] = 1763
portrait[4] = 1780
portrait[5] = 1786
portrait[6] = 1768
portrait[7] = 1780
portrait[8] = 1769
message_end = 8
message_current = 0
message_draw = ""
increase = global.text_speed
characters = 0
hold = 0
message_length = string_length(message[message_current])
script_execute(gml_Script_scr_generate_text_counters)