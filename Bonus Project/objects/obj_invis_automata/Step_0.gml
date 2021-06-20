/// @description determines cellular automata rules and creates the next step down
if(iterating)
{
	for(i = 32; i < room_width-32; i += 64)
	{
		rule = 0;
		if(position_meeting(i-64,y-5,obj_invis_block) == true)
		{
			rule += 1;
		}
		//up = instance_create_layer(i, y-5,"Instances", obj_check);
		if(position_meeting(i,y-5,obj_invis_block) == true)
		{
			rule += 2;
		}
		//right = instance_create_layer(i + 64, y-5,"Instances", obj_check);
		if(position_meeting(i+64,y-5,obj_invis_block) == true)
		{
			rule += 4;
		}
		if(obj_game_controller.rules[rule] == 1)
		{
			createdBlocks[block_num] = instance_create_layer(i,y, "Instances", obj_invis_block)
			block_num++
		}		
	}
	y += 64;
	if(y > 512)
	{
		iterating = false
		creating_targets = true
	}
}
if(creating_targets)
{
	creating_targets = false
	y = 448
	k = 0
	for(i = 32; i<room_width-32;i+=64)
	{
		if(position_meeting(i,y,obj_invis_block) == true )
		{
			obj_game_controller.target_array[k] = instance_create_layer(i,y,"Instances",obj_target)
			k++
		}
	}
	obj_game_controller.num_targets = k
	instance_destroy()
}