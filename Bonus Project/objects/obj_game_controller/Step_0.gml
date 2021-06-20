/// @description Creates randomized rules and targets

if(beginning_stage)
{
	if(stage%5 = 0)
	{
		placed_blocks = stage/5
	}
	rules[0] = false; //always false for obvious reasons
	for(i = 1; i < 7; i++)
	{
		randomize();
		rules[i] = round(random_range(0, 1));
	}

	if(rules[1] = 1)
	{
		rule_blocks[1] = instance_create_layer(352,608,"Instances",obj_block)
	}
	else
	{
		rule_blocks[1] = instance_create_layer(-128,-64,"Instances",obj_block)
	}
	if(rules[2] = 1)
	{
		rule_blocks[2] = instance_create_layer(608,608,"Instances",obj_block)
	}
	else
	{
		rule_blocks[2] = instance_create_layer(-128,-64,"Instances",obj_block)
	}
	if(rules[3] = 1)
	{
		rule_blocks[3] = instance_create_layer(96,768,"Instances",obj_block) //rules 3 and 4 are swapped for visual clarity
	}
	else
	{
		rule_blocks[3] = instance_create_layer(-128,-64,"Instances",obj_block)
	}
	if(rules[4] = 1)
	{
		rule_blocks[4] = instance_create_layer(864,608,"Instances",obj_block)
	}
	else
	{
		rule_blocks[4] = instance_create_layer(-128,-64,"Instances",obj_block)
	}
	if(rules[5] = 1)
	{
		rule_blocks[5] = instance_create_layer(352,768,"Instances",obj_block)
	}
	else
	{
		rule_blocks[5] = instance_create_layer(-128,-64,"Instances",obj_block)
	}
	if(rules[6] = 1)
	{
		rule_blocks[6] = instance_create_layer(608,768,"Instances",obj_block)
	}
	else
	{
		rule_blocks[6] = instance_create_layer(-128,-64,"Instances",obj_block)
	}
	if(rules[7] = 1)
	{
		rule_blocks[7] = instance_create_layer(864,768,"Instances",obj_block)
	}
	else
	{
		rule_blocks[7] = instance_create_layer(-128,-64,"Instances",obj_block)
	}

	//create targets
	for(i = 0; i < placed_blocks; i++)
	{
		invis_block_array[i] = instance_create_layer(round(random_range(0,14))*64+32,round(random_range(0,6))*64,"Instances",obj_invis_block)
	}
	instance_create_layer(x,y,"Instances",obj_invis_automata)
	beginning_stage = false
}
if(invis_done)
{
	for(i = 0; i < placed_blocks; i++)
	{
		instance_destroy(invis_block_array[i])
	}

	blocks_placed = 0
	invis_done = false
	mouse_ready = true
}

if(all_blocks_placed)
{
	all_blocks_placed = false
	clear_stage = true
	instance_create_layer(x,y,"Instances",obj_automata)
}

if(automata_done)
{
	automata_done = false
	if(clear_stage)
	{
		stage++;
		score+= 100
	}
	alarm[0] = room_speed * 3
}