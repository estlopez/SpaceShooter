/// @description This is code for activating and deactivating debug mode.





if debug_graph == true
{
	show_debug_overlay(true, true, 1, 0.5);
	debug_graph = false;
}
else if debug_graph == false
{
	show_debug_overlay(false);
	debug_graph = true;
}









