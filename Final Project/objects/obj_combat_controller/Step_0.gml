// state key: state 0: round start, calculate turn order
// state 1: runs each turn in order, actions implemented by objects themselves
// state 2: combat is over, quit to overworld
for(i = 0; i<combatants; i++)
{
	if(turn_array[i].stat_health <= 0)
	{
		for(j = 0; j < array_length_1d(ally_array);j++)
		{
			if( ally_array[j] == turn_array[i])
			{
				for(k = j; k <array_length_1d(ally_array)-1;k++)
				{
					ally_array[k] = ally_array[k+1]
				}
				ally_array[array_length_1d(ally_array)-1] = turn_array[i]
				//instance_destroy(ally_array[array_length_1d(ally_array)-1])
			}
		}
		for(j = 0; j < array_length_1d(enemy_array);j++)
		{
			if( enemy_array[j] == turn_array[i])
			{
				for(k = j; k <array_length_1d(enemy_array)-1;k++)
				{
					enemy_array[k] = enemy_array[k+1]
				}
				enemy_array[array_length_1d(enemy_array)-1] = turn_array[i]
				//instance_destroy(enemy_array[array_length_1d(enemy_array)-1])
			}
		}
		instance_destroy(turn_array[i])
		combatants--
		for(j = i; j<combatants; j++)
		{
			turn_array[j] = turn_array[j+1]
		}
	}
}
	no_enemies = true
	no_allies = true
	for(i = 0; i<combatants;i++)
	{
		if(turn_array[i].is_ally == true)
		{
			no_allies = false
		}
		else
		{
			no_enemies = false
		}
	}
	if(no_allies)
	{
		room_goto(rm_failure)
	}
	if(no_enemies)
	{
		combat_state = 2
	}
if(combat_state == 0)
{
	//determines turn order (it's okay if multiple entities have the same turn value)
	for(i = 0; i<combatants; i++)
	{
		turn_array[i].turn = turn_array[i].stat_speed * floor(irandom_range(1,global.overworld_x)/global.overworld_x*10)
	}
	
	//sorts the turn_array based on turn values using swapping
	for(i = 0; i<combatants; i++)
	{
		for(j = 0; j<combatants; j++)
		{
			if(turn_array[j].turn < turn_array[i].turn)
			{
				hold = turn_array[j]
				turn_array[j] = turn_array[i]
				turn_array[i] = hold
			}
		}
	}
	
	combat_state = 1 //moves into first turn
	current_turn = 0
	turn_end = false
	turn_start = false
}
//turns on the 'is_acting' parameter for all combatants on their turn
if(combat_state == 1 && delay = false)
{

	if(current_turn >= combatants)
	{
		combat_state = 0
	}
	else if(turn_start == false)
	{
		turn_array[current_turn].is_acting = true
		turn_start = true
	}
	else if(turn_end == true)
	{
		current_turn += 1
		turn_end = false
		turn_start = false
		alarm[0] = room_speed*.5
		delay = true;
	}

    
}
//ends combat
if(combat_state == 2)
{ 
	global.combat_over = true
	global.is_busy = false
	room_goto(global.overworld_room)
	
}
