event_inherited()
score+= 500
if(irandom_range(0,1) == 1)
{
	power_type = irandom_range(0,2)
	if(power_type = 0)
	{
		instance_create_layer(x,y,"Instances",obj_gun_power)
	}
	if(power_type = 1)
	{
		instance_create_layer(x,y,"Instances",obj_health_power)
	}
	if(power_type = 2)
	{
		instance_create_layer(x,y,"Instances",obj_boom_power)
	}
}