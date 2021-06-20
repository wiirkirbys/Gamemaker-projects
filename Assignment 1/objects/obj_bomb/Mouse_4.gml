for(i = 0; i<12;i= i+1)
{
	particle = instance_create_depth(x,y,0,obj_particle);
}


self.x = irandom_range(obj_wall.sprite_width + (self.sprite_width/2), room_width - obj_wall.sprite_width - (self.sprite_width/2))
self.y = irandom_range(obj_wall.sprite_height + (self.sprite_height/2), room_height - obj_wall.sprite_height - (self.sprite_height/2))
audio_play_sound(sfx_click,10,0)
score = score - 200
if(score < 0)
{
	score = 0
}
self.hspeed = irandom_range(-5,5)*1.5
self.vspeed = irandom_range(-5,5)*1.5



