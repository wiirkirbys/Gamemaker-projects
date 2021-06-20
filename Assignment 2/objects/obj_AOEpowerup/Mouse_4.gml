if(obj_gamecontroller.game_state == 0)
{
	obj_gamecontroller.AOE = true
	audio_play_sound(sfx_heal,0,0)
	obj_gamecontroller.alarm[1] = 10*room_speed
	instance_destroy()
}