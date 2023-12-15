if (keyboard_multicheck_pressed(0) && scr_interact())
{
    if (waiter == 0)
    {
        if (global.snowdin_flag[2] < 2 && obj_puzzle_water_meter_overworld_yellow.fill < 2)
        {
            cam = instance_create(obj_pl.x, obj_pl.y, obj_camera)
            __view_set((9 << 0), 0, 1119)
            direction = 0
            obj_pl.state = gml_Script_scr_frozen_state
            global.cutscene = true
            audio_play_sound(snd_puzzle_start, 1, false)
            global.text_box_open = 0
            waiter = 1
        }
        else if (global.snowdin_flag[2] == 2)
        {
            scr_text()
            with (msg)
            {
                sndfnt = 99
                portrait = 0
                message[0] = "* El interruptor ya no se mueve."
            }
            waiter = 5
        }
    }
}
if (waiter == 1)
{
    if (scr_camera_move(240, 200, 3) == 1)
        waiter = 3
}
if (waiter == 2 && cam.x > 260)
{
    cam.hspeed = 0
    waiter = 3
}
if (waiter == 3)
{
    obj_puzzle_controller_overworld_yellow.active = true
    waiter = 4
}
if (waiter == 5 && (!instance_exists(obj_dialoguebox)))
    waiter = 0
if (timer > 0)
    timer--
else if (timer != -1)
{
    waiter = 4
    timer = -1
}
