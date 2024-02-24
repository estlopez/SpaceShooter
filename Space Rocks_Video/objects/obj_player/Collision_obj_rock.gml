if (powerup == 2) exit;

effect_create_above(ef_firework, x, y, 1, c_red);
instance_destroy();
obj_game.alarm[0] = 120;
audio_play_sound(snd_lose, 0, false);









