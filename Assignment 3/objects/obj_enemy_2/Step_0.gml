self.y = self.y + self.yVelocity
self.yVelocity = log10(255-y)
if(canShoot)
{
	bullet = instance_create_layer(x,y,"Instances",obj_bullet_enemy)
	bullet.speed = 3
	bullet = instance_create_layer(x,y,"Instances",obj_bullet_enemy)
	bullet.speed = 3
	bullet.direction += 15
	bullet.image_angle += 15
	bullet = instance_create_layer(x,y,"Instances",obj_bullet_enemy)
	bullet.speed = 3
	bullet.direction -= 15
	bullet.image_angle -= 15
	bullet = instance_create_layer(x,y,"Instances",obj_bullet_enemy)
	bullet.speed = 3
	bullet.direction += 30
	bullet.image_angle += 30
	bullet = instance_create_layer(x,y,"Instances",obj_bullet_enemy)
	bullet.speed = 3
	bullet.direction -= 30
	bullet.image_angle -= 30
	canShoot = false
	alarm[1] = shotDelay*room_speed*irandom_range(1,4)
	audio_play_sound(sfx_laser_gun,0,0)
}
