var shard_speed_max = 3
var shard_speed_inc = ((shard_speed_max * 2) / bottle_shard_number)
for (var i = 0; i < bottle_shard_number; i++)
{
    var shard = instance_create(x, y, obj_battle_enemy_attack_starlo_bottle_shard)
    shard.hspeed = ((-shard_speed_max) + (shard_speed_inc * i))
}
instance_create(x, (y - 25), obj_battle_enemy_attack_starlo_bottle_explosion)
audio_play_sound(choose(385, 386), 1, false)
