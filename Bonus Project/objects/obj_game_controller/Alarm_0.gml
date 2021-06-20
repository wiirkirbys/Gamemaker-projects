instance_destroy(obj_automata)
alarm[0] = -1
for(i = 0; i < placed_blocks; i++)
{
	instance_destroy(block_array[i])
}
for(i = 0; i < num_targets; i++)
{
	instance_destroy(target_array[i])
}
for(i = 1; i <= 7; i++)
{
	instance_destroy(rule_blocks[i])
}
beginning_stage = true;
