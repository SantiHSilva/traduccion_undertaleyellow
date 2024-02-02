part_smokesys = part_system_create()
part_smokeEm = part_emitter_create(part_smokesys)
part_system_depth(part_smokesys, ((-room_height) - 1000))
part_smoke = part_type_create()
part_type_sprite(part_smoke, 665, 0, 1, 1)
part_type_size(part_smoke, 0.75, 0.75, 0, 0)
part_type_colour2(part_smoke, 8421504, 8421504)
part_type_alpha3(part_smoke, 0.15, 0.15, 0)
part_type_speed(part_smoke, 0.4, 0.4, -0.001, 0)
part_type_direction(part_smoke, 45, 135, 0, 3)
part_type_orientation(part_smoke, 0, 359, random_range(-2, 2), 0.1, 1)
part_type_life(part_smoke, 100, 100)
part_type_blend(part_smoke, 1)
