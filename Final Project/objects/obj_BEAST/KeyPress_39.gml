event_inherited();
if(is_attacking && enemy_index < obj_combat_controller.combatants-4)
{
	enemy_index += 1
	cursor_x = obj_combat_controller.enemy_array[enemy_index].grid_x
	cursor_y = obj_combat_controller.enemy_array[enemy_index].grid_y
}