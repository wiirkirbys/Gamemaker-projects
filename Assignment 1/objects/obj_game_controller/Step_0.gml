if(mouse_check_button_pressed(mb_right) && focus >= 0 && cooldown = false)
{
	room_speed = room_speed/1.5
	focus_on = true
}
if(mouse_check_button_released(mb_right) && cooldown = false)
{
	room_speed = room_speed*1.5
	focus_on = false
}
step_count = step_count + 1/room_speed
seconds = floor(step_count)
if(game_time - seconds <= 0 && game_state == 0)
{
	game_state = -1
	alarm[0] = room_speed*10
}
if(focus_on == true && focus > 0)
{
	focus = focus - 1.5
}
else if(focus_on == true && focus <= 0 && !cooldown == true)
{
	cooldown = true
	room_speed = room_speed*1.5
	step_count = step_count + 1
	focus_on = false
}
else
{
	if(focus < 100)
	{
		focus = focus + .5
	}
	if(focus = 100)
	{
		cooldown = false
	}
}


	
