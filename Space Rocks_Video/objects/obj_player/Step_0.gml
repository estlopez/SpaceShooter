/// @description Insert description here
// You can write your code in this editor
move_wrap(true, true, 0);

if keyboard_check(vk_up)
{
	motion_add(image_angle, 0.1);
}
if keyboard_check(vk_left)
{
	image_angle += 4;
}
if keyboard_check(vk_right)
{
	image_angle -= 4;
}

// Autofire logic
if mouse_check_button_pressed(mb_left)
{
	is_shooting = true;
	shoot();
}
else if mouse_check_button_released(mb_left)
{
	is_shooting = false;
	alarm[1] = 0;
}

if is_shooting == true
{
	if alarm_get(1) <= 0
	{
		alarm_set(1,Shot_Rate);
	}
}

