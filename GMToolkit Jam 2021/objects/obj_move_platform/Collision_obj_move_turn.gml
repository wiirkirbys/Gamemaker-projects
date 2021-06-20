right = !right
if(instance_place(x,y,obj_Player1) != noone)
{
	instance_place(x,y,obj_Player1).hspeed = -instance_place(x,y,obj_Player1).hspeed
}
if(instance_place(x,y,obj_Player2) != noone)
{
	instance_place(x,y,obj_Player2).hspeed = -instance_place(x,y,obj_Player2).hspeed
}