if(is_acting)
{
	if(irandom_range(1,2) == 1)
	{
		is_attacking = true
	}
	else
	{
		is_moving = true
	}
	is_acting = false
}
if(is_attacking)
{
	instance_create_layer(x+20,y+10,"Instances",obj_enemy_fireball)
	is_attacking = false
	obj_combat_controller.turn_end = true
}
if(is_moving) //is moving in logic, but doesn't actually move sprite or collision
{
	move_direction = irandom_range(1,4)
	if(move_direction == 1 && grid_x > 0)
	{
		grid_x -= 1
		x = grid_x*34+544
	}
	else if(move_direction == 2 && grid_y > 0)
	{
		grid_y -= 1
		y = grid_y*34+272
	}
	else if(move_direction == 3 && grid_x < 5)
	{
		grid_x += 1
		x = grid_x*34+544
	}
	else if(move_direction == 4 && grid_y < 5)
	{
		grid_y += 1
		y = grid_y*34+272
	}
	is_moving = false
	obj_combat_controller.turn_end = true
}
//collision_rectangle_list for boss