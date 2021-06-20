if(is_acting)
{
	is_acting = false
	cursor_x = grid_x
	cursor_y = grid_y
	if(menu_selection == 0)
	{
		is_moving = true
	}
	else if(menu_selection == 1)
	{
		is_attacking = true
	}
	else if(menu_selection == 2 && ultimate_charge >= 50)
	{
		is_ultimate = true
	}
	else
	{
		is_acting = true
	}
	ultimate_charge += 10
}

else if(is_moving)
{
	is_acting = false
	occupied = false
	for(i = 0; i < array_length_1d(obj_combat_controller.ally_array); i++)
	{
		if(obj_combat_controller.ally_array[i].grid_x = cursor_x && obj_combat_controller.ally_array[i].grid_y = cursor_y)
		{
			occupied = true
		}
	}
	if(occupied == false)
	{
	x =cursor_x * 34+272
	y =cursor_y * 34+272
	instance_create_layer(x+20,y+10,"Instances",obj_attack)
	is_moving = false
	obj_combat_controller.turn_end = true
	}
}
