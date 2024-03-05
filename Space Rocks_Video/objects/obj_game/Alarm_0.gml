/// @description Insert description here
// You can write your code in this editor
room_restart();


show_debug_message(working_directory);


ini_open(working_directory + "player_session.ini");
ini_write_real("Player_State", "Score", points);
ini_close();


