if(is_acting)
{
	if(irandom_range(1,2) == 1)
	{
		is_attacking = true
	}
	else
	{
		is_moving = true
	}
	is_acting = false
}
if(is_attacking)
{
	instance_create_layer(x+20,y+10,"Instances",obj_enemy_attack)
	is_attacking = false
	obj_combat_controller.turn_end = true
}
if(is_moving)
{
	for(i = 0; i < obj_combat_controller.combatants-4; i++)
	{
		if(obj_combat_controller.enemy_array[i].grid_x == grid_x && obj_combat_controller.enemy_array[i].grid_y == grid_y+1)
		{
			occupied = 4
		}
		else if(obj_combat_controller.enemy_array[i].grid_x == grid_x && obj_combat_controller.enemy_array[i].grid_y == grid_y-1)
		{
			occupied = 2
		}
		else if(obj_combat_controller.enemy_array[i].grid_y == grid_y && obj_combat_controller.enemy_array[i].grid_y == grid_x+1)
		{
			occupied = 3
		}
		else if(obj_combat_controller.enemy_array[i].grid_y == grid_y && obj_combat_controller.enemy_array[i].grid_y == grid_x-1)
		{
			occupied = 1
		}
		else
		{
			occupied = 0
		}
	}
		
	move_direction = irandom_range(1,4)
	if(move_direction == 1 && grid_x > 0 && occupied != 1)
	{
		grid_x -= 1
		x = grid_x*34+544
	}
	else if(move_direction == 2 && grid_y > 0 && occupied != 2)
	{
		grid_y -= 1
		y = grid_y*34+272
	}
	else if(move_direction == 3 && grid_x < 5 && occupied != 3)
	{
		grid_x += 1
		x = grid_x*34+544
	}
	else if(move_direction == 4 && grid_y < 5 && occupied != 4)
	{
		grid_y += 1
		y = grid_y*34+272
	}
	else // if space is occupied, attack instead
	{
		instance_create_layer(x+20,y+10,"Instances",obj_enemy_attack)
	}
	is_moving = false
	obj_combat_controller.turn_end = true
}
