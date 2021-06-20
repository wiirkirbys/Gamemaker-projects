if(isMoving = false && image_index != 5)
{
	if(image_index < 5)
	{
		image_speed = 1
	}
	else
	{
		image_speed = -1
	}
}
else if(!isMoving && image_index == 5)
{
	image_speed = 0
}
if(health <= 0)
{
	instance_destroy()
}