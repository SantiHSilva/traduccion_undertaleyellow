if (id_dunebud_particles != noone)
{
    if instance_exists(id_dunebud_particles)
    {
        with (id_dunebud_particles)
            instance_destroy()
    }
}
with (id_dunebud_enemy)
    event_user(0)
