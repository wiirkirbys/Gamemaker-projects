if(mouse_ready = true)
{
	if(mouse_y < 448 && mouse_x < 992 && mouse_x > 32)
	{
		block_array[blocks_placed] = instance_create_layer(mouse_x-((mouse_x+32)%64),mouse_y-(mouse_y%64),"Instances",obj_block)
		blocks_placed++
	}
	if(blocks_placed >= placed_blocks) // if done placing begin automata
	{
		blocks_placed = 0
		mouse_ready = false
		all_blocks_placed = true;
	}
}