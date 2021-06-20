if(!isMoving)
{
	if(image_index < 4)
	{
		image_speed = 1
	}
	else if(image_index > 4)
	{
		image_speed = -1
	}
	else
	{
		image_speed = 0
	}
}
if(self.xVelocity < 0)
{
	image_speed = 1
	if(image_index == 8)
	{
		image_speed = 0
	}
}
if(self.xVelocity > 0)
{
	image_speed = -1
	if(image_index == 0)
	{
		image_speed = 0
	}
}
event_inherited()