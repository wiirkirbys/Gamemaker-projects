if(is_acting)
{
	action = irandom_range(1,3)
	if(action == 3 && ultimate_charge >= 100)
	{
		is_ultimate = true
	}
	else if(action == 2)
	{
		is_moving = true
	}
	else
	{
		is_attacking = true
	}
	is_acting = false
}
if(is_attacking)
{
	instance_create_layer(x+20,y+10,"Instances",obj_enemy_fireball)
	is_attacking = false
	ultimate_charge += 7
	obj_combat_controller.turn_end = true
}
if(is_moving)
{
	for(i = 0; i < combatants-4; i++)
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
		instance_create_layer(x+20,y+10,"Instances",obj_enemy_attack)
	}
	else if(move_direction == 2 && grid_y > 0 && occupied != 2)
	{
		grid_y -= 1
		y = grid_y*34+272
		instance_create_layer(x+20,y+10,"Instances",obj_enemy_attack)
	}
	else if(move_direction == 3 && grid_x < 5 && occupied != 3)
	{
		grid_x += 1
		x = grid_x*34+544
		instance_create_layer(x+20,y+10,"Instances",obj_enemy_attack)
	}
	else if(move_direction == 4 && grid_y < 5 && occupied != 4)
	{
		grid_y += 1
		y = grid_y*34+272
		instance_create_layer(x+20,y+10,"Instances",obj_enemy_attack)
	}
	else // if space is occupied, move instead
	{
		instance_create_layer(x+20,y+10,"Instances",obj_enemy_fireball)
	}
	ultimate_charge += 20
	is_moving = false
	obj_combat_controller.turn_end = true
}
if(is_ultimate)
{
	temp = 0
	beam_max = 0
	beam_place = 1
	for(j = 1; j <= 4; j++)
	{
		for(k = j-1; k <= j+1; k++)
		{
			for(i = 0; i < obj_combat_controller.combatants-1;i++)
			{
				if(obj_combat_controller.ally_array[i].grid_y == k)
				{
					temp += 1
				}
			}

		}
		if(temp > beam_max)
		{
			beam_max = temp
			beam_place = j
		}
	}
	for(k = beam_place-1; k <= beam_place+1; k++)
	{
		for(i = 0; i < obj_combat_controller.combatants-1;i++)
		{
			if(obj_combat_controller.ally_array[i].grid_y == k)
			{
				obj_combat_controller.ally_array[i].stat_health -= 25
				instance_create_layer(obj_combat_controller.ally_array[i].x+20,obj_combat_controller.ally_array[i].y+10,"Instances",obj_explosion)
			}
		}
	}
	is_ultimate = false
	ultimate_charge = 0
	obj_combat_controller.turn_end = true
	y = grid_y*34+272
	instance_create_layer(x,y,"Effects",obj_megabeam)
}
			