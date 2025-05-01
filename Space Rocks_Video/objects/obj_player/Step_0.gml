var _move = keyboard_check(vk_up) or keyboard_check(ord("W"));
var _reverse = keyboard_check(vk_down) or keyboard_check(ord("S"));
var _hor = keyboard_check(ord("D")) - keyboard_check(ord("A"));
var _fire = mouse_check_button_pressed(mb_left);
var _stopfire = mouse_check_button_released(mb_left);

var _gp = global.gamepad_main;
if (_gp != undefined)
{
	_move +=gamepad_button_value(_gp,  gp_face1);
	_reverse += gamepad_button_value(_gp, gp_shoulderlb);
	_hor += gamepad_axis_value(_gp, gp_axislh);
	_fire += gamepad_button_check_pressed(_gp, gp_shoulderrb);
	_stopfire += gamepad_button_check_released(_gp, gp_shoulderrb);
}

_move = clamp(_move, 0, 1);
_hor = clamp(_hor, -1, 1);
_fire = clamp(_fire, 0,1);

move_wrap(true, true, 0);



if _move
{
	motion_add(image_angle, 0.1 * _move);
}
if _hor != 0 
{
	image_angle += -4 * _hor;
}
if _reverse
{
	motion_add(image_angle, -0.1 * _reverse);
}
if keyboard_check(vk_left)
{
	image_angle += 4;
}
if keyboard_check(vk_right)
{
	image_angle += -4;
}


// Autofire logic
if _fire
{
	alarm_set(1,1)
	is_shooting = true;
	//shoot();
}
else if _stopfire
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

