// Shot timer

if obj_game.powerup_meter < 10
{
	
	var _bullet = instance_create_layer(x, y, "Instances", obj_bullet)
	instance_create_layer(x, y,"Instances", obj_bullet);
	

}
if obj_game.powerup_meter >= 10
{
	
	var _bullet = instance_create_layer(x, y, "Instances", obj_bullet)
	_bullet.direction += 10;
	_bullet = instance_create_layer(x,y, "Instances", obj_bullet)
	_bullet.direction -= 10;
	
}

if obj_game.powerup_meter >= 20
{
	
	Shot_Speed = 15;
	
}

if obj_game.powerup_meter >= 60
{
	
	Shot_Rate = 18;
	
}

if obj_game.powerup_meter >= 120
{
	
	Shot_Size = 2;
	
}





	


		








