if (scr_interact() && keyboard_multicheck_pressed(0))
{
    if (npc_flag == 0)
    {
        npc_flag = 1
        scr_text()
        with (msg)
        {
            message[0] = "* (The topmost paper is a#  handwritten letter.)	"
            message[1] = "* To: King ASGORE.	"
            message[2] = "* This project, while exciting,#  will be quite the undertaking.	"
            message[3] = "* We will need Mining Co. to#  work overtime to provide the#  necessary materials.	"
            message[4] = "* Furthermore, a meeting was#  conducted at the Factory.	"
            message[5] = "* I'm happy to report that#  everyone is on board!	"
            message[6] = "* There already are many great#  robot ideas floating about.	"
            message[7] = "* Cooking, cleaning, recreation;#  the motivation is through the#  roof!	"
            message[8] = "* Though... one engineer#  suggested we take this further#  with a \"protection bot.\"	"
            message[9] = "* I am quite unsure about that#  proposition but you have the#  final say.	"
            message[10] = "* In any case, we will see this#  completed.	"
            message[11] = "* - Prof. Z."
        }
    }
    else
    {
        npc_flag = 0
        scr_text()
        with (msg)
        {
            message[0] = "* (The paper underneath reads:)	"
            message[1] = "* Project: Metal & Magic:	"
            message[2] = "* Effective immediately, cease#  home utility production at the#  Factory-	"
            message[3] = "* (The rest of the page is#  redacted.)"
        }
    }
}
event_inherited()
