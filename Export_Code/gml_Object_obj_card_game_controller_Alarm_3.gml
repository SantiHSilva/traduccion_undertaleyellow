cardg_failure = 1
audio_play_sound(snd_card_game_lose, 1, false)
if instance_exists(obj_card_game_cursor)
    instance_destroy(obj_card_game_cursor)
