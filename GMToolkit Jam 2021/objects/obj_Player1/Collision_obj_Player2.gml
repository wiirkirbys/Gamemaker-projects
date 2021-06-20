/// @description Victory Condition
if(Color == obj_Player2.Color)
{
	game_controller.state = "Victory"
}
else
{
	instance_destroy(obj_Player2)
	instance_destroy()
}