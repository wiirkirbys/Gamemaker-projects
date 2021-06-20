if(is_attacking)
{
	for(i = 0; i < obj_combat_controller.combatants-3;i++)
	{
		if(obj_combat_controller.enemy_array[i].grid_y == grid_y)
		{
			obj_combat_controller.enemy_array[i].stat_health -= 15
		}
	}
	instance_create_layer(x+30,y+10,"Effects",obj_gale_slash)
	is_attacking = false
	obj_combat_controller.turn_end = true
}
if(is_ultimate)
{
	for(k = grid_y-1; k <= grid_y+1; k++)
	{
		for(i = 0; i < obj_combat_controller.combatants-3;i++)
		{
			if(obj_combat_controller.enemy_array[i].grid_y == k)
			{
				obj_combat_controller.enemy_array[i].stat_health -= 15
				instance_create_layer(obj_combat_controller.enemy_array[i].x+20,obj_combat_controller.enemy_array[i].y+10,"Instances",obj_explosion)
			}
		}
		instance_create_layer(grid_x*34+272+30,k*34+272+10,"Effects",obj_gale_slash)
	}
	is_ultimate = false
	ultimate_charge = 0
	obj_combat_controller.turn_end = true
}
event_inherited()