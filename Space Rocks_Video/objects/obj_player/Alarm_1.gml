// Shot timer

if obj_game.powerup_meter >= 10
{
	//shoot();
	//powerups[1]();
	current_shot = powerups[1]();
}

if obj_game.powerup_meter >= 20
{
	//shoot();
	current_shot = powerups[21]();
}

if obj_game.powerup_meter >= 60
{
	//shoot();
	current_shot = powerups[3]();
}

if obj_game.powerup_meter >= 120
{
	//shoot();
	current_shot = powerups[4]();
}

else
{
	powerup_0();
}



	


		








