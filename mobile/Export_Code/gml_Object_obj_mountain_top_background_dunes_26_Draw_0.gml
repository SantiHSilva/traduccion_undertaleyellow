for (var i = 0; i <= room_width; i += background_get_width(mountain_bg_layer2))
    draw_background(mountain_bg_layer2, ((__view_get((0 << 0), 0) + i) / 1.05), 109)
draw_background(mountain_bg_layer3, ((__view_get((0 << 0), 0) + 180) / 1.05), 106)
var mountain_offset = -400
for (i = mountain_offset; i <= room_width; i += background_get_width(mountain_bg_layer4))
    draw_background(mountain_bg_layer4, ((__view_get((0 << 0), 0) / 1.3) + i), 100)
for (i = 0; i <= room_width; i += background_get_width(mountain_bg_layer6))
    draw_background(mountain_bg_layer6, ((__view_get((0 << 0), 0) / 1.07) + i), 102)
for (i = 0; i <= room_width; i += background_get_width(mountain_bg_layer5))
    draw_background(mountain_bg_layer5, ((__view_get((0 << 0), 0) / 1.1) + i), 92)
for (i = 0; i <= room_width; i += sprite_get_width(spr_mountain_bg_layer7))
    draw_sprite(spr_mountain_bg_layer7, -1, ((__view_get((0 << 0), 0) / 1.1) + i), 42)
for (i = 0; i <= room_width; i += sprite_get_width(mountain_bg_layer8))
    draw_background(mountain_bg_layer8, ((__view_get((0 << 0), 0) / 1.15) + i), 40)
