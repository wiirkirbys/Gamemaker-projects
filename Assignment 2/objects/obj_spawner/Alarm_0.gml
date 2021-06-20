instance_create_layer(x,y-55,"Instances",obj_missile)
audio_play_sound(sfx_missile_spawn,0,0)
alarm[0] = room_speed*random_range(.5,3)