event_inherited()
fortune = 0
fortune_ready = 0
can_talk = 0
if (global.geno_complete[3] == 1 && global.route == 3)
{
    instance_destroy()
    return;
}
