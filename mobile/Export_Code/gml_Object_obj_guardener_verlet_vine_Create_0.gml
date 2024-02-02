event_inherited()
bounce = 0
p_gravity = 0.2
p_friction = 0.99999
precision = 3
rope_sprite = 3461
base_x = x
base_y = y
r_length = irandom_range(150, 250)
r_segments = 7
draw_colour = make_color_rgb(46, 35, 85)
points = []
array_push(points, [base_x, base_y, base_x, base_y, 1, rope_sprite, 0])
for (var i = 0; i < (r_segments - 1); i++)
    array_push(points, [base_x, (points[i][1] + (r_length / r_segments)), base_x, (points[i][1] + (r_length / r_segments)), 0, rope_sprite, irandom_range(0, 5)])
sticks = []
for (i = 0; i < (r_segments - 2); i++)
    array_push(sticks, [points[i], points[(i + 1)], scr_distance(points[i], points[(i + 1)]), choose(-1, 1), 0])
array_push(sticks, [points[i], points[(i + 1)], scr_distance(points[i], points[(i + 1)]), choose(-1, 1), 0])
