/// @description Insert description here
// You can write your code in this editor
enemy_health = enemy_health - enemy_strength;
instance_destroy(other);


if enemy_health <= 0
{
	instance_destroy(self);
}