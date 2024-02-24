
instance_destroy(other);
effect_create_above(ef_explosion, x, y, 1, c_orange);

direction = random(360);

if sprite_index == spr_rock_big
{
        sprite_index = spr_rock_small;
		
		for (var i = 0; i <= Rock_split_Amt - 1; i += 1)
			instance_copy(true);
		
}
else if instance_number(obj_rock) < 12
{
        sprite_index = spr_rock_big;
        x = -100;
}
else
{
        instance_destroy();
}

obj_game.powerup_meter += .5;
obj_game.points += 50;

audio_play_sound(snd_rockdestroy, 0, false,.1);





