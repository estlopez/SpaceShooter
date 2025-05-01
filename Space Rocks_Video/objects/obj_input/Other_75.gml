var _gamepad = async_load[? "pad_index"];

switch (async_load[? "event_type"])
{
	case "gamepad discovered":
		array_push(global.gamepads, _gamepad);
		gamepad_set_axis_deadzone(_gamepad, 0.2);
	break;
	
	case "gamepad lost":
		var _array_index = array_get_index(global.gamepads, _gamepad);
		if (_array_index >= 0)
		{
			array_delete(global.gamepads, _array_index, 1);
		}
	break;
}

if array_length(global.gamepads) > 0
{
	global.gamepad_main = global.gamepads[0];
}
else
{
	global.gamepad_main = undefined;
}