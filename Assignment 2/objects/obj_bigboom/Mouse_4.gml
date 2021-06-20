if(obj_gamecontroller.game_state == 0)
{
	instance_destroy(obj_missile)
	audio_play_sound(sfx_heal,0,0)
	instance_destroy()
}