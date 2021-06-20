spawn = irandom_range(0,2)
if(spawn = 0)
{
	instance_create_layer(x,y,"Instances",obj_healthpack)
}
else if(spawn = 1)
{
	instance_create_layer(x,y,"Instances",obj_bigboom)
}
else
{
	instance_create_layer(x,y,"Instances",obj_AOEpowerup)
}
alarm[0] = room_speed*random_range(10,20)