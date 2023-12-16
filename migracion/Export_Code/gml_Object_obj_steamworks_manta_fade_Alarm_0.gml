with (other)
{
    state = 1
    if (obj_steamworks_manta.manta_has_passengers == 0)
    {
        obj_steamworks_manta.manta_has_passengers = 1
        __view_set((9 << 0), 0, 2053)
    }
    else
    {
        with (obj_steamworks_manta)
            event_perform(ev_create, 0)
        __view_set((9 << 0), 0, 1031)
        obj_pl.x = dock_x
        obj_pl.y = dock_y
        if (global.party_member != noone)
        {
            scr_actor_into_follower(obj_ceroba_npc, obj_ceroba_follower)
            global.party_member.x = dock_x
            global.party_member.y = dock_y
        }
    }
}
