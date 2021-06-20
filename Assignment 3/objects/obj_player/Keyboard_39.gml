x = x + xVelocity
if(x >= room_width - sprite_width/2)
{
	x = room_width - sprite_width/2
}
image_speed = 1
if(image_index == 10)
{
	image_speed = 0
}
isMoving = true