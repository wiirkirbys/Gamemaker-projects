self.spawner.spawn_count -= 1
instance_create_layer(x,y,"Instances",obj_explosion)
audio_play_sound(sfx_enemy_destroyed,0,0)