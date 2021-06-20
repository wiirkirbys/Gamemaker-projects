if(canShoot)
{
	if(gun = 0)
	{
		bullet = instance_create_layer(x,y,"Instances",obj_bullet_player)
		obj_bullet_player.damage = 25
		bullet.speed = 25
		canShoot = false
		alarm[0] = shotDelay*room_speed/2
	}
	if(gun = 1)
	{
		bullet = instance_create_layer(x,y,"Instances",obj_bullet_player)
		bullet.speed = 15
		bullet = instance_create_layer(x,y,"Instances",obj_bullet_player)
		bullet.speed = 15
		bullet.direction += 15
		bullet.image_angle += 15
		bullet = instance_create_layer(x,y,"Instances",obj_bullet_player)
		bullet.speed = 15
		bullet.direction -= 15
		bullet.image_angle -= 15
		bullet = instance_create_layer(x,y,"Instances",obj_bullet_player)
		bullet.speed = 15
		bullet.direction += 30
		bullet.image_angle += 30
		bullet = instance_create_layer(x,y,"Instances",obj_bullet_player)
		bullet.speed = 15
		bullet.direction -= 30
		bullet.image_angle -= 30
		canShoot = false
		obj_bullet_player.damage = 10
		alarm[0] = shotDelay*room_speed
	}
	if(gun = 2)
	{
		bullet = instance_create_layer(x,y,"Instances",obj_bullet_player)
		bullet.speed = 3
		bullet.direction = irandom_range(0,360)
		bullet.isArcing = true
		alarm[0] = shotDelay * room_speed / 15
		obj_bullet_player.damage = 4
		canShoot = false
	}
	audio_play_sound(sfx_laser_gun,0,0)
}