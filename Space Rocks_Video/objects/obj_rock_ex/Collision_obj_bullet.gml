

instance_destroy(other);
effect_create_above(ef_explosion, x, y, 1, c_fuchsia);

direction = random(360);

if sprite_index == spr_rock_ex_big
{
        sprite_index = spr_rock_ex_small;
        instance_copy(true);
}
else if instance_number(obj_rock_ex) < 12
{
        sprite_index = spr_rock_ex_big;
        x = -100;
}
else
{
        instance_destroy();
}

obj_game.powerup_meter += .5;
obj_game.points += 80;

audio_play_sound(snd_rockdestroy, 0, false,.1);





