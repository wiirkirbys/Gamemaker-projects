/// @description Moves the overlapping platform
list = ds_list_create()
size = instance_place_list(x,y, obj_wall_parent, list, false)
for(var i = 0; i < size; ++i;)
{
	if(right == true)
	{
		hspeed = 2
		list[|i].hspeed = 2
	}
	else
	{
		hspeed = -2
		list[|i].hspeed = -2
	}
}

