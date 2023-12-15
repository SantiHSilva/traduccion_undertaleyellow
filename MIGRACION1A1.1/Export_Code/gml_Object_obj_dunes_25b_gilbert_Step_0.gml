event_inherited()
if interact
{
    if (global.party_member != -4)
    {
        if (npc_flag < 3)
            npc_flag = 3
        switch npc_flag
        {
            case 3:
                scr_text()
                with (msg)
                {
                    message[0] = "* Hello, sir!"
                    message[1] = "* I'm guessing you're the#  boss of this#  mine."
                    message[2] = "* Well, not for much#  longer."
                    message[3] = "* Oh? Why's that?"
                    message[4] = "* I'm preparing for#  retirement!"
                    message[5] = "* It'll be sad to leave#  this place behind but I#  feel it's time."
                    message[6] = "* Hey, that's not all#  bad! I WISH I could#  retire."
                    message[7] = "* Yeah, it'll be nice.#  Just gotta find someone#  to replace me."
                    message[8] = "* I have a few#  ideas.	"
                    message[9] = "* Well, good luck with#  everything!"
                    message[10] = "* Thank you!"
                    prt[0] = 312
                    prt[1] = 328
                    prt[2] = 361
                    prt[3] = 311
                    prt[4] = 362
                    prt[5] = 359
                    prt[6] = 328
                    prt[7] = 359
                    prt[8] = 359
                    prt[9] = 312
                    prt[10] = 362
                    talker[0] = 1169
                    talker[2] = 1710
                    talker[3] = 1169
                    talker[4] = 1710
                    talker[6] = 1169
                    talker[7] = 1710
                    talker[9] = 1169
                    talker[10] = 1710
                    sndfnt_array[0] = 102
                    sndfnt_array[2] = 391
                    sndfnt_array[3] = 102
                    sndfnt_array[4] = 391
                    sndfnt_array[6] = 102
                    sndfnt_array[7] = 391
                    sndfnt_array[9] = 102
                    sndfnt_array[10] = 391
                }
                npc_flag += 1
                break
            case 4:
                scr_text()
                with (msg)
                {
                    message[0] = "* Finally figured out how#  to turn these machines#  off."
                    message[1] = "* Me and North Star need#  to have a chat."
                    prt[0] = 359
                    prt[1] = 359
                    talker[0] = 1710
                }
                break
        }

    }
    else
    {
        if (npc_flag >= 3)
            npc_flag = 0
        switch npc_flag
        {
            case 0:
                scr_text()
                with (msg)
                {
                    talker[0] = 1710
                    message[0] = "* I figured out where#  those boulders were#  coming from.	"
                    message[1] = "* Turns out North Star#  set the machines up for#  \"Feisty Missions.\"	"
                    message[2] = "* Had a friendly chat#  with him about it all.	"
                    message[3] = "* He immediately#  apologized so... I#  forgave him.	"
                    message[4] = "* How could I say no to#  his overwhelming charm?	"
                    message[5] = "* I'm only monster."
                    prt[0] = 359
                    prt[1] = 361
                    prt[2] = 359
                    prt[3] = 362
                    prt[4] = 361
                    prt[5] = 359
                }
                npc_flag += 1
                break
            case 1:
                scr_text()
                with (msg)
                {
                    talker[0] = 1710
                    message[0] = "* Things were already#  running well earlier but#  now they're even better!	"
                    message[1] = "* Glad my legacy in this#  place will be nothing#  but positive memories!"
                    prt[0] = 362
                    prt[1] = 362
                }
                npc_flag += 1
                break
            case 2:
                scr_text()
                with (msg)
                {
                    talker[0] = 1710
                    message[0] = "* As my old man used to#  say: mine on, kid!	"
                    message[1] = "* ...	"
                    message[2] = "* Okay, he uh... he never#  said that. I said that.#  Just now."
                    prt[0] = 359
                    prt[1] = 361
                    prt[2] = 359
                }
                break
        }

    }
}
