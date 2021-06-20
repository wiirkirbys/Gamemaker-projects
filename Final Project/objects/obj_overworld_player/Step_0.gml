if(global.is_busy)
{
	hspeed = 0;
	vspeed = 0;
	if(audio_is_playing(bgm_overworld))
	{
		global.audio = bgm_overworld
		audio_stop_sound(bgm_overworld)
		audio_play_sound(bgm_combat,1,true)
	}
	if(audio_is_playing(bgm_overworld_2))
	{
		global.audio = bgm_overworld_2
		audio_stop_sound(bgm_overworld_2)
		audio_play_sound(bgm_combat,1,true)
	}
}
else if(global.combat_over)
{
	audio_stop_sound(bgm_combat)
	audio_play_sound(global.audio,1,true)
	x = global.overworld_x
	y = global.overworld_y
	instance_destroy(instance_nearest(x,y,obj_overworld_enemy))
	global.combat_over = false
}
else if(room != rm_combat)
{
	global.overworld_x = x
	global.overworld_y = y
	global.overworld_room = room
}