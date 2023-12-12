if live_call()
    return global.live_result;
var battle_box = obj_dialogue_box_battle_transformation_any
var ball_offset = 30
switch attack_tick
{
    case 30:
        var x_origin = battle_box.x
        var y_origin = (battle_box.bbox_top - 50)
        var ball_dir = 270
        for (var i = (ball_dir - ball_offset); i <= (ball_dir + ball_offset); i += ball_offset)
        {
            var ball = instance_create_depth((x_origin + lengthdir_x(45, i)), (y_origin + lengthdir_y(45, i)), -100, obj_battle_enemy_attack_axis_energy_ball_boss_geno)
            ball.direction = i
            ball.alarm[0] = 30
        }
        break
    case 90:
        x_origin = (battle_box.bbox_left - 50)
        y_origin = battle_box.y
        ball_dir = 0
        for (i = (ball_dir - ball_offset); i <= (ball_dir + ball_offset); i += ball_offset)
        {
            ball = instance_create_depth((x_origin + lengthdir_x(45, i)), (y_origin + lengthdir_y(45, i)), -100, obj_battle_enemy_attack_axis_energy_ball_boss_geno)
            ball.direction = i
            ball.alarm[0] = 30
        }
        break
    case 120:
        x_origin = (battle_box.bbox_left - 25)
        y_origin = (battle_box.bbox_bottom + 25)
        ball_dir = 45
        for (i = (ball_dir - ball_offset); i <= (ball_dir + ball_offset); i += ball_offset)
        {
            ball = instance_create_depth((x_origin + lengthdir_x(45, i)), (y_origin + lengthdir_y(45, i)), -100, obj_battle_enemy_attack_axis_energy_ball_boss_geno)
            ball.direction = i
            ball.alarm[0] = 30
        }
        break
    case 175:
        x_origin = (battle_box.bbox_right + 50)
        y_origin = battle_box.y
        ball_dir = 180
        for (i = (ball_dir - ball_offset); i <= (ball_dir + ball_offset); i += ball_offset)
        {
            ball = instance_create_depth((x_origin + lengthdir_x(45, i)), (y_origin + lengthdir_y(45, i)), -100, obj_battle_enemy_attack_axis_energy_ball_boss_geno)
            ball.direction = i
            ball.alarm[0] = 30
        }
        break
    case 250:
        instance_destroy()
        break
}

attack_tick += 1
