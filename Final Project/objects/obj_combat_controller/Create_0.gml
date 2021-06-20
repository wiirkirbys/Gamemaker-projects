combat_state = 0
delay = false
if(global.encounter < 2 || global.encounter = 3 || global.encounter = 5)
{
	combatants = 5
}
else
{
	combatants = 6
}
for(i = 0; i < 6; i++)
{
	for(j = 0; j < 6; j ++)
	{
		ally_grid[i,j] = instance_create_layer(34*i+272,34*j+272,"Instances",obj_combat_grid)
	}
}

for(i = 0; i < 6; i++)
{
	for(j = 0; j < 6; j++)
	{
		enemy_grid[i,j] = instance_create_layer(34*i+544,34*j+272,"Instances",obj_combat_grid)
	}
}
turn_array[0] = instance_create_layer(34*3+272,34*2+272,"Instances",obj_HERO)
turn_array[1] = instance_create_layer(34*2+272,34*5+272,"Instances",obj_PRINCESS)
turn_array[2] = instance_create_layer(34*3+272,34*3+272,"Instances",obj_BEAST)
for(i = 0;i<3;i++)
{
	ally_array[i] = turn_array[i]
}
if(global.encounter == 0)
{
	combatants = 5
	turn_array[3] = instance_create_layer(34*2+544,34*3+272,"Instances",obj_ENEMY)
	turn_array[4] = instance_create_layer(34*5+544,34*1+272,"Instances",obj_ENEMY)
	for(i = 3;i<5;i++)
	{
		enemy_array[i-3] = turn_array[i]
	}
	global.encounter = irandom_range(0,2)
}
else if(global.encounter == 1)
{
	combatants = 5
	turn_array[3] = instance_create_layer(34*4+544,34*1+272,"Instances",obj_ENEMY)
	turn_array[4] = instance_create_layer(34*0+544,34*3+272,"Instances",obj_ENEMY)
	for(i = 3;i<5;i++)
	{
		enemy_array[i-3] = turn_array[i]
	}
	global.encounter = irandom_range(0,2)
}
else if(global.encounter == 2)
{
	combatants = 6
	turn_array[3] = instance_create_layer(34*4+544,34*2+272,"Instances",obj_ENEMY)
	turn_array[4] = instance_create_layer(34*3+544,34*0+272,"Instances",obj_ENEMY)
	turn_array[5] = instance_create_layer(34*1+544,34*5+272,"Instances",obj_ENEMY)
	for(i = 3;i<6;i++)
	{
		enemy_array[i-3] = turn_array[i]
	}
	if(global.miniboss_dead = false)
	{
		global.encounter = irandom_range(0,2)
	}
	else
	{
		global.encounter = irandom_range(2,5)
	}
}
else if(global.encounter == 3)
{
	combatants = 5
	turn_array[3] = instance_create_layer(34*4+544,34*1+272,"Instances",obj_ENEMY)
	turn_array[4] = instance_create_layer(34*0+544,34*3+272,"Instances",obj_WIZARD)
	for(i = 3;i<5;i++)
	{
		enemy_array[i-3] = turn_array[i]
	}
	global.encounter = irandom_range(2,5)
}
else if(global.encounter == 4)
{
	combatants = 6
	turn_array[3] = instance_create_layer(34*2+544,34*5+272,"Instances",obj_ENEMY)
	turn_array[4] = instance_create_layer(34*3+544,34*4+272,"Instances",obj_WIZARD)
	turn_array[5] = instance_create_layer(34*1+544,34*1+272,"Instances",obj_ENEMY)
	for(i = 3;i<6;i++)
	{
		enemy_array[i-3] = turn_array[i]
	}
	global.encounter = irandom_range(2,5)
}
else if(global.encounter == 5)
{
	combatants = 5
	turn_array[3] = instance_create_layer(34*1+544,34*4+272,"Instances",obj_WIZARD)
	turn_array[4] = instance_create_layer(34*5+544,34*3+272,"Instances",obj_WIZARD)
	for(i = 3;i<5;i++)
	{
		enemy_array[i-3] = turn_array[i]
	}
	global.encounter = irandom_range(2,5)
}
else if(global.encounter == 6)
{
	combatants = 6
	turn_array[3] = instance_create_layer(34*2+544,34*5+272,"Instances",obj_WIZARD)
	turn_array[4] = instance_create_layer(34*3+544,34*4+272,"Instances",obj_WIZARD)
	turn_array[5] = instance_create_layer(34*1+544,34*1+272,"Instances",obj_WIZARD)
	for(i = 3;i<6;i++)
	{
		enemy_array[i-3] = turn_array[i]
	}
	global.encounter = irandom_range(2,5)
}
else if(global.encounter == 7)
{
	combatants = 4
	turn_array[3] = instance_create_layer(34*3+544,34*5+272,"Instances",obj_BADGUY)
	enemy_array[0] = turn_array[3]
}
