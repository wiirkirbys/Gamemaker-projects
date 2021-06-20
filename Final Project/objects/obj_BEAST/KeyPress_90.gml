if(is_attacking)
{
	obj_combat_controller.enemy_array[enemy_index].stat_health -= 7
	instance_create_layer(obj_combat_controller.enemy_array[enemy_index].x,obj_combat_controller.enemy_array[enemy_index].y,"Effects",obj_roar)
	is_attacking = false
	obj_combat_controller.turn_end = true
}
if(is_ultimate)
{
	for(i = 0; i< array_length_1d(obj_combat_controller.enemy_array); i++)
	{
		obj_combat_controller.enemy_array[i].stat_health -= 10
		instance_create_layer(obj_combat_controller.enemy_array[i].x,obj_combat_controller.enemy_array[i].y,"Effects",obj_roar)
	}
	ultimate_charge = 0
	is_ultimate = false
	obj_combat_controller.turn_end = true
}
	
event_inherited();
if(is_attacking)
{
	cursor_x = obj_combat_controller.enemy_array[enemy_index].grid_x
	cursor_y = obj_combat_controller.enemy_array[enemy_index].grid_y
}
else
{
	cursor_x = grid_x
	cursor_y = grid_y
}
