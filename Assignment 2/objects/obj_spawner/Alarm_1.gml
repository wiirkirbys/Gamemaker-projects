if(obj_gamecontroller.spawners < 5)
{
	obj_gamecontroller.spawners += 1
	instance_create_layer(x,y,"Instances",obj_spawner)
	hspeed = -hspeed*1.2

}