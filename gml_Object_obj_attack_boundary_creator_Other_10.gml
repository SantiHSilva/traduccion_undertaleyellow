instance_create((create_x - thickness), (create_y - thickness), obj_attack_boundary_box)
global.id_store.image_xscale = (thickness + (width / 2))
global.id_store.image_yscale = (thickness / 2)
global.id_store.unique_id = unique_id
instance_create((create_x - thickness), (create_y + height), obj_attack_boundary_box)
global.id_store.image_xscale = (thickness + (width / 2))
global.id_store.image_yscale = (thickness / 2)
global.id_store.unique_id = unique_id
instance_create((create_x - thickness), create_y, obj_attack_boundary_box)
global.id_store.image_xscale = (thickness / 2)
global.id_store.image_yscale = (height / 2)
global.id_store.unique_id = unique_id
instance_create((create_x + width), create_y, obj_attack_boundary_box)
global.id_store.image_xscale = (thickness / 2)
global.id_store.image_yscale = (height / 2)
global.id_store.unique_id = unique_id
