function scr_text_talkers() //gml_Script_scr_text_talkers
{
    var talker_enabled = 0
    for (var i = 0; i < array_length(talker); i++)
    {
        if (talker[i] != noone)
            talker_enabled = 1
    }
    if talker_enabled
    {
        if (message_current < array_length_1d(talker))
        {
            talker_current = message_current
            if (talker[talker_current] == obj_quote_battle_ceroba_outro_4 && talker_current > 0)
                talker[talker_current] = talker[(talker_current - 1)]
        }
        if (talker_current > 0)
        {
            with (talker[(talker_current - 1)])
                is_talking = 0
        }
        var talking_npc = talker[talker_current]
        with (obj_npc_parent)
        {
            if ((id != talking_npc && is_talking == 1) || global.dialogue_open == 0)
                is_talking = 0
        }
        if (talker[talker_current] != noone)
        {
            with (talking_npc)
                is_talking = 1
        }
        if (object_is_ancestor(talker[talker_current], obj_npc_parent) && talker[talker_current].npc_voice_sfx != 0)
            sndfnt_array[talker_current] = talker[talker_current].npc_voice_sfx
    }
}

