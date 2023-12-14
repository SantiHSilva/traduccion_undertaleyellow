var turns_passed = global.turns_passed
var enemy_low_hp = global.enemy_low_hp
var enemy_mode = global.enemy_mode
var enemy_mode_gen = global.enemy_mode_gen
switch enemy_mode
{
    case 0:
        if (enemy_mode_gen == 0)
        {
            if (turns_passed == 0)
            {
                message[0] = "Supongo que no#puedes irte como#entraste, ¿verdad?"
                message[1] = "Sería más fácil#para ambos."
                portrait[0] = 1755
                portrait[1] = 1759
                message_end = 1
            }
            else if (turns_passed == 1)
            {
                message[0] = "¿De dónde vienes?"
                message[1] = "No hay#entradas#accesibles..."
                portrait[0] = 1763
                portrait[1] = 1780
                message_end = 1
            }
            else if (turns_passed == 2)
            {
                message[0] = "Todo lo que sé es#que de alguna manera...#me encontraste."
                message[1] = "Siento poner las#cosas difíciles, pero#esta vez no me voy#a acobardar.."
                portrait[0] = 1786
                portrait[1] = 1781
                message_end = 1
            }
            else if (turns_passed == 3)
            {
                message[0] = "Los otros monstruos...#¿Los molestaste#también?"
                message[1] = "No es que me importe#mucho seguir su#actividad..."
                portrait[0] = 1780
                portrait[1] = 1759
                message_end = 1
            }
            else if (turns_passed == 4)
            {
                message[0] = "Esta región de las#Ruinas es mi hogar."
                message[1] = "Y mi casa tiene reglas.#Los residentes#lo entienden."
                portrait[0] = 1776
                portrait[1] = 1759
                message_end = 1
            }
            else if (turns_passed == 5)
            {
                message[0] = "Pero parece que#nunca recibiste el#memorándum."
                message[1] = "Eso, o estás#ignorando mis#deseos a#propósito."
                portrait[0] = 1780
                portrait[1] = 1759
                message_end = 1
            }
            else if (turns_passed == 6)
            {
                message[0] = "¿A qué viene#esa cara de#tristeza?"
                message[1] = "¿No lo entiendes?#¿No te acuerdas de mí?"
                portrait[0] = 1764
                portrait[1] = 1778
                message_end = 1
            }
            else if (turns_passed == 7)
            {
                message[0] = "Sé que no eres#un fantasma pero..."
                message[1] = "Podría ser que...#No, no es#posible."
                portrait[0] = 1780
                portrait[1] = 1763
                message_end = 1
            }
            else if (turns_passed == 8)
            {
                message[0] = "Tú..."
                message[1] = "Pareces tan#indefenso. Diferente."
                message[2] = "¿Pero es una#excusa?"
                portrait[0] = 1763
                portrait[1] = 1764
                portrait[2] = 1780
                message_end = 2
            }
            else if (turns_passed == 9)
            {
                message[0] = "No... No estás#tratando de hacerme#daño..."
                message[1] = "Tú... No eres#quien yo creía que#eras, ¿verdad?"
                message[2] = "...¿Cómo he podido#ser tan tonto?"
                message[3] = "Me disculpo.#De verdad que sí."
                message[4] = "Esto se me#fue de las manos..."
                message[5] = "Yo... No sé#cómo hacer#las cosas ahora..."
                portrait[0] = 1786
                portrait[1] = 1764
                portrait[2] = 1780
                portrait[3] = 1781
                portrait[4] = 1778
                portrait[5] = 1763
                message_end = 5
            }
        }
        else if (turns_passed == 0)
        {
            message[0] = "Temía que esto#ocurriera.#Qué mala suerte."
            message[1] = "Sabes, a pesar de#tus pensamientos..."
            message[2] = "Los monstruos#no son malos."
            portrait[0] = 1785
            portrait[1] = 1763
            portrait[2] = 1786
            message_end = 2
        }
        else if (turns_passed == 1)
        {
            message[0] = "Monsterkind representa#la esperanza, el bien."
            message[1] = "Aquí todo el mundo#sólo intenta encontrar#un poco de alegría."
            portrait[0] = 1786
            portrait[1] = 1763
            message_end = 1
        }
        else if (turns_passed == 2)
        {
            message[0] = "Pero... Supongo que#no estás para alegrías."
            portrait[0] = 1759
            message_end = 0
        }
        else if (turns_passed == 3)
        {
            message[0] = "¿A quién quiero#engañar? No me creerias."
            message[1] = "Yo soy el que#se volvió hostil#primero."
            portrait[0] = 1763
            portrait[1] = 1781
            message_end = 1
        }
        else if (turns_passed == 4)
        {
            message[0] = "Pero esto no#es un error..."
            message[1] = "Luchas a#propósito."
            portrait[0] = 1759
            portrait[1] = 1762
            message_end = 1
        }
        else if (turns_passed == 5)
        {
            message[0] = "Si te niegas a ser#pacífico..."
            message[1] = "Yo tampoco#seré pacífico."
            message[2] = "A pesar de lo#que he dicho, los#monstruos no somos#debiles."
            portrait[0] = 1785
            portrait[1] = 1762
            portrait[2] = 1762
            message_end = 2
        }
        else if (turns_passed == 6)
        {
            message[0] = "Estoy perdiendo en#esto, ¿no?"
            message[1] = "¿Por qué desperdicio#mi aliento?"
            message[2] = "No vale la pena#hablar contigo..."
            portrait[0] = 1763
            portrait[1] = 1759
            portrait[2] = 1779
            message_end = 2
        }
        else if (turns_passed == 7)
        {
            message[0] = "Así que...#voy a...#dejar de hablar...#contigo..."
            portrait[0] = 1779
            message_end = 0
        }
        else if (turns_passed >= 8)
        {
            message[0] = "..."
            portrait[0] = 1763
            message_end = 0
        }
        break
    case 1:
        if (enemy_mode_gen == 0)
        {
            if (turns_passed == 0)
            {
                message[0] = "Supongo que no#puedes irte como#entraste, ¿verdad?"
                message[1] = "Sería más fácil#para ambos."
                portrait[0] = 1755
                portrait[1] = 1759
                message_end = 1
            }
            else if (turns_passed == 1)
            {
                message[0] = "¿De dónde vienes?"
                message[1] = "No hay#entradas#accesibles..."
                portrait[0] = 1765
                portrait[1] = 1780
                message_end = 1
            }
            else if (turns_passed == 2)
            {
                message[0] = "* Yo..."
                portrait[0] = 1780
                message_end = 0
            }
            else if (turns_passed == 3)
            {
                message[0] = "Creo saber lo#que has hecho..."
                portrait[0] = 1759
                message_end = 0
            }
            else if (turns_passed == 4)
            {
                message[0] = "Hiciste daño a muchos#de los monstruos de#ahí fuera, ¿verdad?"
                message[1] = "Decibat me dijo#que te fuiste del#alboroto..."
                portrait[0] = 1781
                portrait[1] = 1763
                message_end = 1
            }
            else if (turns_passed == 5)
            {
                message[0] = "Yo... No sé#qué pensar de ti..."
                message[1] = "Debería llamarte#malvado pero...#perdonaste a Decibat."
                message[2] = "¿Por qué?"
                portrait[0] = 1764
                portrait[1] = 1763
                portrait[2] = 1763
                message_end = 2
            }
            else if (turns_passed == 6)
            {
                message[0] = "Yo... siempre#quise estar solo.#Estaba seguro de#ello..."
                message[1] = "Pero ahora que#estoy tan cerca#de estarlo..."
                message[2] = "Ya no quiero eso."
                portrait[0] = 1763
                portrait[1] = 1780
                portrait[2] = 1786
                message_end = 2
            }
            else if (turns_passed == 7)
            {
                message[0] = "Sé que debería#odiarte pero..."
                message[1] = "Ya no me queda#mucho."
                portrait[0] = 1763
                portrait[1] = 1786
                message_end = 1
            }
            else if (turns_passed == 8)
            {
                message[0] = "Tengo a Decibat..."
                message[1] = "Y a ti también."
                message[2] = "Yo..."
                message[3] = "No quiero#estar solo."
                message[4] = "Y no soy un#monstruo malicioso,#¡lo prometo!"
                message[5] = "Probablemente#te asusté."
                message[6] = "Y tú siendo tan#joven, los demás..."
                message[7] = "..."
                message[8] = "¿Por qué no#vienes a mi casa?"
                message[9] = "Podemos hacer las paces#allí, como...#amigos."
                message[10] = "¿Qué te parece?"
                portrait[0] = 1781
                portrait[1] = 1780
                portrait[2] = 1786
                portrait[3] = 1763
                portrait[4] = 1764
                portrait[5] = 1781
                portrait[6] = 1786
                portrait[7] = 1759
                portrait[8] = 1780
                portrait[9] = 1763
                portrait[10] = 1776
                message_end = 10
            }
            else if (turns_passed >= 9)
            {
                message[0] = "..."
                portrait[0] = 1776
                message_end = 0
            }
        }
        else if (turns_passed == 0)
        {
            message[0] = "Temía que esto#ocurriera.#Qué mala suerte."
            message[1] = "Sabes, a pesar de#tus pensamientos..."
            message[2] = "Los monstruos#no son malos."
            portrait[0] = 1785
            portrait[1] = 1763
            portrait[2] = 1786
            message_end = 2
        }
        else if (turns_passed == 1)
        {
            message[0] = "Monsterkind representa#la esperanza, el bien."
            message[1] = "Aquí todo el mundo#sólo intenta encontrar#un poco de alegría."
            portrait[0] = 1786
            portrait[1] = 1763
            message_end = 1
        }
        else if (turns_passed == 2)
        {
            message[0] = "Pero... Supongo que#no estás para alegrías."
            portrait[0] = 1759
            message_end = 0
        }
        else if (turns_passed == 3)
        {
            message[0] = "¿A quién quiero#engañar? No me creerias."
            message[1] = "Yo soy el que#se volvió hostil#primero."
            portrait[0] = 1763
            portrait[1] = 1781
            message_end = 1
        }
        else if (turns_passed == 4)
        {
            message[0] = "Pero esto no#es un error..."
            message[1] = "Luchas a#propósito."
            portrait[0] = 1759
            portrait[1] = 1762
            message_end = 1
        }
        else if (turns_passed == 5)
        {
            message[0] = "Si te niegas a ser#pacífico..."
            message[1] = "Yo tampoco#seré pacífico."
            message[2] = "A pesar de lo#que he dicho, los#monstruos no somos#debiles."
            portrait[0] = 1785
            portrait[1] = 1762
            portrait[2] = 1762
            message_end = 2
        }
        else if (turns_passed == 6)
        {
            message[0] = "Estoy perdiendo en#esto, ¿no?"
            message[1] = "¿Por qué desperdicio#mi aliento?"
            message[2] = "No vale la pena#hablar contigo..."
            portrait[0] = 1763
            portrait[1] = 1759
            portrait[2] = 1779
            message_end = 2
        }
        else if (turns_passed == 7)
        {
            message[0] = "Así que...#voy a...#dejar de hablar...#contigo..."
            portrait[0] = 1785
            message_end = 0
        }
        else if (turns_passed >= 8)
        {
            message[0] = "..."
            portrait[0] = 1763
            message_end = 0
        }
        break
    case 2:
        if (turns_passed == 0)
        {
            message[0] = "Sabes, ha estado más#tranquilo desde que#apareciste..."
            message[1] = "Supongo que debería#agradecerte."
            portrait[0] = 1780
            portrait[1] = 1755
            message_end = 1
            break
        }
        else if (turns_passed == 1)
        {
            message[0] = "Por fin se#cumplió mi deseo."
            message[1] = "O tal vez fue sólo una#casualidad."
            portrait[0] = 1755
            portrait[1] = 1780
            message_end = 1
            break
        }
        else if (turns_passed == 2)
        {
            message[0] = "..."
            message[1] = "Allá donde voy el#polvo sigue pegado#a mi capa..."
            message[2] = "Siento suponerlo,#pero..."
            message[3] = "Todos se han ido,#¿no?"
            portrait[0] = 1759
            portrait[1] = 1763
            portrait[2] = 1763
            portrait[3] = 1786
            message_end = 3
            break
        }
        else if (turns_passed == 3)
        {
            message[0] = "Sé que debo#agradecerte, y es#lo que pedí..."
            message[1] = "¡Pero nunca quise#herir a nadie!"
            portrait[0] = 1763
            portrait[1] = 1764
            message_end = 1
            break
        }
        else if (turns_passed == 4)
        {
            message[0] = "No puedo evitar#pensarlo#¡Es mi culpa!"
            message[1] = "¿Quizás mi deseo#te trajo aquí?"
            message[2] = "Tal vez sólo necesito#tomar una siesta."
            message[3] = "Cuando me despierte,#te habrás ido,#¿verdad?"
            message[4] = "Sí, sólo eres un#fantasma de mis#recuerdos..."
            portrait[0] = 1763
            portrait[1] = 1781
            portrait[2] = 1786
            portrait[3] = 1759
            portrait[4] = 1759
            message_end = 4
            break
        }
        else if (turns_passed == 5)
        {
            message[0] = "Oye."
            message[1] = "Si no eres real..."
            message[2] = "Entonces, ¿todo esto#es realmente culpa#mía?"
            message[3] = "..."
            message[4] = "¡Ahora los echo#de menos a todos!"
            portrait[0] = 1768
            portrait[1] = 1768
            portrait[2] = 1763
            portrait[3] = 1763
            portrait[4] = 1764
            message_end = 4
            break
        }
        else if (turns_passed == 6)
        {
            message[0] = "Penilla dibujo#un boceto de un#Sweet Corn."
            message[1] = "Nunca le di las gracias..."
            portrait[0] = 1763
            portrait[1] = 1781
            message_end = 1
            break
        }
        else if (turns_passed == 7)
        {
            message[0] = "Una vez, Sweet Corn#me dio un abrazo#sin razón."
            message[1] = "Le dije que no lo#volviera a hacer..."
            message[2] = "..."
            message[3] = "Eran lo más parecido#a amigos que#había tenido..."
            message[4] = "Y ahora..."
            portrait[0] = 1781
            portrait[1] = 1786
            portrait[2] = 1786
            portrait[3] = 1763
            portrait[4] = 1764
            message_end = 4
        }
}

message_current = 0
message_draw = ""
increase = global.text_speed
characters = 0
hold = 0
message_length = string_length(message[message_current])
script_execute(gml_Script_scr_generate_text_counters)
