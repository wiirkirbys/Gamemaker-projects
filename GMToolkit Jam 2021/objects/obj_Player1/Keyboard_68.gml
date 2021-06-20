/// @description Moves right
hspeed = 3
if(instance_place(x,y,obj_move_platform) != noone)
{
	hspeed += instance_place(x,y,obj_move_platform).hspeed
}