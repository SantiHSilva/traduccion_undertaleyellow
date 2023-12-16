room_goto(asset_get_index(global.current_room_overworld))
instance_create(x, y, obj_overworld_fade_in_screen)
global.sound_carry_overworld = 0
scr_radio_fade(1, 100)
scr_cutscene_end()
obj_pl.image_alpha = 1
if (global.party_member != noone)
    global.party_member.image_alpha = 1
