/// @description Controls game state
if (state = "Defeat")
{
	obj_respawn_text.visible = true;
}
else
{
	obj_respawn_text.visible = false;
}
if(state = "Victory")
{
	room_goto_next()
	state = "Play"
}
if(state = "Wait")
{
	if(image_index >= 14)
	{
		image_speed = -1
		has_waited = true
		room_restart()
	}
	if(image_index <= 0 && has_waited == true)
	{
		image_speed = 0
		image_index = 0
		has_waited = false
		state = "Play"
	}
}