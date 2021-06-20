if( health == 0 && game_state == 0)
{
	game_state = -1
	alarm[0] = room_speed*10
}
if(mouse_check_button_pressed(1))
{
	audio_play_sound(sfx_player_click,0,0)
	if(AOE == true)
	{
		instance_create_layer(mouse_x,mouse_y,"Instances",obj_AOE)
	}
}