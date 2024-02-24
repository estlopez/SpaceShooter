/// @description Insert description here
// You can write your code in this editor
is_shooting = false;
powerup = 0;
Creation_test = "This is a test";


function shoot()
{
	instance_create_layer(x, y,"Instances", obj_bullet);
	audio_play_sound(snd_shoot, 0, false, .1, 0, random_range(0.8, 1.2));
}

function powerup_1()
{
	var _bullet = instance_create_layer(x, y, "Instances", obj_bullet)
	_bullet.direction += 10;
	_bullet = instance_create_layer(x,y, "Instances", obj_bullet)
	_bullet.direction -= 10;
}

function powerup_2()
{
	Shot_Speed = 15;
}

function powerup_3()
{
	Shot_Rate = 18;
}

function powerup_4()
{
	Shot_Size = 2;
}



