global.down_key = 0
global.left_key = 0
global.right_key = 0
global.up_key = 0
global.down_keyp = 0
global.left_keyp = 0
global.right_keyp = 0
global.up_keyp = 0
global.down_pressed = 0
global.left_pressed = 0
global.up_pressed = 0
global.right_pressed = 0
global.button1 = gp_face1
global.button2 = gp_face2
global.button3 = 32772
global.using_gamepad = 0
ini_open("Controls.sav")
global.button1 = ini_read_real("Controls", "Z", 32769)
global.button2 = ini_read_real("Controls", "X", 32770)
global.button3 = ini_read_real("Controls", "C", 32772)
global.gamepad_deadzone = ini_read_real("Controls", "deadzone", 0.15)
global.option_autorun = ini_read_real("Controls", "autorun", 0)
global.option_autoshoot = ini_read_real("Controls", "autoshoot", 0)
global.option_autorhythm = ini_read_real("Controls", "autorhythm", 0)
global.option_screenshake_toggle = ini_read_real("Controls", "screenshake", 1)
global.option_retry_toggle = ini_read_real("Controls", "retry", 0)
global.option_easymode = ini_read_real("Controls", "easymode", 0)
ini_close()
display_set_gui_size(320, 240)
surface_resize(application_surface, 1920, 1440)
global.lvUpTreshold = 10
global.randomEnemy = 0
global.scriptedEnemy = 0
lastdir = 270
global.encounter = 0
global.cutscene = false
global.saveroom = "Dark Ruins - Entrance"
global.debug = false
global.debugmove = 0
global.er = 350
global.tinypuzzle = 5
deathText = 0
global.pear = 0
global.battlecheck = 0
display_scale = 0
display_x_pos = 0
display_y_pos = 0
display_game_width = 0
display_game_height = 0
if (os_type == os_android)
    instance_create_depth(0, 0, 0, obj_phone_controls)
