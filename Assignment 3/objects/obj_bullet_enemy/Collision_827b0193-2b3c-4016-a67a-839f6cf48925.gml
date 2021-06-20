health -= 10
audio_play_sound(sfx_player_hit,0,0)
instance_create_layer(x,y,"Instances",obj_small_explosion)
instance_destroy()