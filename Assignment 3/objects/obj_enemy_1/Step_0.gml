if(xVelocity != 0)
{
isMoving = true
}
self.x = self.x + self.xVelocity
if(self.x <= self.sprite_width/2)
{
	xVelocity = 5
}
else if(self.x >= room_width - self.sprite_width/2)
{
	xVelocity = -5
}

if(canShoot)
{
	bullet = instance_create_layer(x,y,"Instances",obj_bullet_enemy)
	bullet.speed = 5
	canShoot = false
	alarm[1] = shotDelay*room_speed*irandom_range(1,4)
	audio_play_sound(sfx_laser_gun,0,0)
}
