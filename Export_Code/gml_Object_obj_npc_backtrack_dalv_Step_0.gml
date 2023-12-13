event_inherited()
if (interact && waiter == 0)
    waiter = 1
if (waiter == 1)
{
    scr_text()
    switch npc_flag
    {
        case 0:
            with (msg)
            {
                portrait = 0
                sndfnt = 434
                talker[0] = -2
                ch_msg = 4
                ch[1] = "Casa"
                ch[2] = "Futuro"
                message[0] = "* ¡Clover!"
                message[1] = "* ¡Hola!"
                message[2] = "* Me has pillado en plena mudanza,"
                message[3] = "* Pero no me importa hacer#  una pausa para charlar."
                message[4] = "* ¿En qué piensas?"
                prt[0] = 1761
                prt[1] = 1773
                prt[2] = 1769
                prt[3] = 1773
                prt[4] = 1769
                if (outcome == 1)
                {
                    message[5] = "* Oh, ¿ves esta estructura#  de aquí?"
                    message[6] = "* ¡La he reclamado como mi#  nueva residencia!"
                    message[7] = "* Por supuesto, no está en#  estado para vivir en#  este momento."
                    message[8] = "* Definitivamente necesitaré#  ayuda en la construcción."
                    message[9] = "* No estoy seguro de si a#  Pops le gustará estar,#  tan cerca pero..."
                    message[10] = "* Seguro que se le pasará."
                    message[11] = "* De vez en cuando#  se le va la cabeza."
                    message[12] = "* Estamos trabajando en ello..."
                    prt[5] = 1769
                    prt[6] = 1761
                    prt[7] = 1765
                    prt[8] = 1769
                    prt[9] = 1780
                    prt[10] = 1769
                    prt[11] = 1776
                    prt[12] = 1755
                    other.waiter = 0
                    other.npc_flag += 1
                }
                if (outcome == 2)
                {
                    message[5] = "* Bueno, aún no he#  hecho un plan concreto."
                    message[6] = "* Hacer las cosas#  paso a paso."
                    message[7] = "* Sí lo recuerdas, te di#  algunas ideas antes de#  que te fueras de mi casa."
                    message[8] = "* ¡Tengo que decir que#  la idea del concierto en#  particular es tentadora!"
                    message[9] = "* ...si me armo de valor#  para hacer algo así."
                    message[10] = "* ¿Quizá repase mis conocimientos#  de órganos mientras tanto?"
                    message[11] = "* ¡La práctica hace al maestro!"
                    prt[5] = 1765
                    prt[6] = 1773
                    prt[7] = 1769
                    prt[8] = 1761
                    prt[9] = 1780
                    prt[10] = 1769
                    prt[11] = 1773
                    other.waiter = 0
                    other.npc_flag += 1
                }
            }
            break
        case 1:
            with (msg)
            {
                portrait = 0
                sndfnt = 434
                talker[0] = -2
                message[0] = "* No lo había pensado# hasta ahora pero..."
                message[1] = "* Podríamos tener una crisis#  entre manos."
                message[2] = "* La mitad de mi equipaje aquí#  está lleno de maíz."
                message[3] = "* Suficiente para una semana#  como mucho, pero#  ¿después qué?"
                message[4] = "* Supongo que podría#  volver a mi campo..."
                message[5] = "* Pero aún así, eso sólo#  me llevará hasta#  cierto punto."
                message[6] = "* ¡No quiero lidiar#  con la adicción al maíz!"
                message[7] = "* Hmm... "
                message[8] = "* Le daré vueltas a esto#  durante algún tiempo."
                message[9] = "* No te preocupes por mí."
                prt[0] = 1763
                prt[1] = 1780
                prt[2] = 1759
                prt[3] = 1759
                prt[4] = 1780
                prt[5] = 1776
                prt[6] = 1755
                prt[7] = 1780
                prt[8] = 1755
                prt[9] = 1776
            }
            waiter = 0
            npc_flag = 2
            break
        case 2:
            with (msg)
            {
                portrait = 0
                sndfnt = 434
                talker[0] = -2
                message[0] = "* Así que, ¿has estado# viajando por el# Subsuelo?"
                message[1] = "* ¡Tu valentía es# inspiradora!"
                message[2] = "* Las Ruinas fueron sólo el# principio de sus# obstáculos, estoy seguro."
                message[3] = "* Yo... lamento haberte#  molestado. Muchísimo."
                message[4] = "* Pero, con la mentalidad# del vaso medio lleno..."
                message[5] = "* Luchar primero contra un#  monstruo de bajo nivel#  era un buen entrenamiento, ¿no?"
                message[6] = "* Hay algunos encuentros#  bastante aterradores por ahí."
                message[7] = "* No soy nada comparado#  con ellos..."
                message[8] = "* Así que, por favor, ¡mantente a salvo!"
                prt[0] = 1773
                prt[1] = 1769
                prt[2] = 1769
                prt[3] = 1780
                prt[4] = 1776
                prt[5] = 1773
                prt[6] = 1776
                prt[7] = 1780
                prt[8] = 1773
            }
            waiter = 0
            npc_flag = 3
            break
        case 3:
            with (msg)
            {
                portrait = 0
                sndfnt = 434
                talker[0] = -2
                message[0] = "* Sabes, me parece extraño."
                message[1] = "* Nos conocimos hace sólo#  unas horas, pero por#  alguna razón..."
                message[2] = "* Siento como si te#  conociera desde hace años."
                message[3] = "* El tiempo es realmente el#  puzzle que nunca#  resolveremos."
                prt[0] = 1765
                prt[1] = 1776
                prt[2] = 1769
                prt[3] = 1773
            }
            waiter = 0
            npc_flag = 4
            break
        case 4:
            with (msg)
            {
                portrait = 0
                sndfnt = 434
                talker[0] = -2
                message[0] = "* Bueno, será mejor#  que vuelva."
                message[1] = "* ¡Te deseo toda la suerte#  del mundo, Clover!"
                message[2] = "* ¡Haz por los demás#  lo que hiciste por mí!"
                prt[0] = 1769
                prt[1] = 1773
                prt[2] = 1769
            }
            waiter = 0
            break
    }

}
