if (!instance_exists(obj_bowll_body_a))
    instance_destroy()
if (obj_bowll_body_a.animating == 1)
    stage_counter += 1
else
    event_user(15)
event_user(1)
with (obj_bowll_head_shadow_a)
    event_user(0)
