function cutscene_actor_into_follower() //gml_Script_cutscene_actor_into_follower
{
    if (global.party_member == noone)
    {
        cutscene_advance()
        return 0;
    }
    instance_create(actor_follower.x, actor_follower.y, global.party_member)
    instance_destroy(actor_follower)
    cutscene_advance()
    return 1;
}

