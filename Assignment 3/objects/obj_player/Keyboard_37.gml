x = x - xVelocity
if(x <= sprite_width/2)
{
	x = sprite_width/2
}
image_speed = -1
if(image_index == 0)
{
	image_speed = 0
}
isMoving = true