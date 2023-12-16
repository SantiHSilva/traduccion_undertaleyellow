var geno_snowdin = 0
if global.geno_complete[2]
    geno_snowdin = 1
if (geno_snowdin == 1)
    instance_destroy()
if global.player_can_travel
    instance_destroy()
image_speed = 0
is_talking = 0
waiter = 0
depth = (-y)
