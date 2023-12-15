part_sys_energy = part_system_create()
part_system_depth(part_sys_energy, -999)
part_em_energy = part_emitter_create(part_sys_energy)
part_type_energy = part_type_create()
part_type_flash = part_type_create()
part_type_ring = part_type_create()
part_type_shape(part_type_flash, 2)
part_type_alpha2(part_type_flash, 1, 0)
part_type_color1(part_type_flash, 16777215)
part_type_orientation(part_type_flash, 45, 45, 0.2, 0, 0)
part_type_size(part_type_flash, 0.7, 0.7, -0.15, 0)
part_type_life(part_type_flash, 30, 30)
part_type_shape(part_type_energy, 0)
part_type_alpha3(part_type_energy, 1, 1, 0)
part_type_color1(part_type_energy, 16777215)
part_type_direction(part_type_energy, 0, 359, 0, 0)
part_type_speed(part_type_energy, 5, 7, 0, 0)
part_type_size(part_type_energy, 3, 3, 0, 0)
part_type_life(part_type_energy, 7, 7)
part_type_shape(part_type_ring, 5)
part_type_alpha3(part_type_ring, 1, 1, 0)
part_type_color1(part_type_ring, 16777215)
part_type_size(part_type_ring, 0, 0, 0.1, 0)
part_type_life(part_type_ring, 10, 10)
part_emitter_region(part_sys_energy, part_em_energy, x, x, y, y, 0, 1)
part_emitter_burst(part_sys_energy, part_em_energy, part_type_energy, 28)
part_emitter_burst(part_sys_energy, part_em_energy, part_type_flash, 1)
part_emitter_burst(part_sys_energy, part_em_energy, part_type_ring, 1)
