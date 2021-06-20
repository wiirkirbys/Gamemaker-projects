self.x = irandom_range(obj_wall.sprite_width + (self.sprite_width/2), room_width - obj_wall.sprite_width - (self.sprite_width/2))
self.y = irandom_range(obj_wall.sprite_height + (self.sprite_height/2), room_height - obj_wall.sprite_height - (self.sprite_height/2))
audio_play_sound(sfx_click,10,0)
score = score + 150
self.hspeed = irandom_range(-5,5)
self.vspeed = irandom_range(-5,5)*2
