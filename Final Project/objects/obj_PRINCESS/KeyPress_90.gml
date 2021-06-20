if(is_attacking)
{
	obj_combat_controller.ally_array[ally_index].stat_health += 10
	if(obj_combat_controller.ally_array[ally_index].stat_health > 100)
	{
		obj_combat_controller.ally_array[ally_index].stat_health = 100
	}
	instance_create_layer(obj_combat_controller.ally_array[ally_index].x,obj_combat_controller.ally_array[ally_index].y,"Effects",obj_heal)
	is_attacking = false
	ally_index = 2
	obj_combat_controller.turn_end = true
}
if(is_ultimate)
{
	for(i = 0; i< array_length_1d(obj_combat_controller.ally_array); i++)
	{
		obj_combat_controller.ally_array[i].stat_health += 50
		instance_create_layer(obj_combat_controller.ally_array[i].x,obj_combat_controller.ally_array[i].y,"Effects",obj_heal)
		if(obj_combat_controller.ally_array[i].stat_health > 100)
		{
			obj_combat_controller.ally_array[i].stat_health = 100
		}
	}
	ultimate_charge = 0
	is_ultimate = false
	obj_combat_controller.turn_end = true
}
		
event_inherited();
