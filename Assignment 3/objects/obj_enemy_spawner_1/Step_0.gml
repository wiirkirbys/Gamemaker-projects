if(spawn_count < max_spawns)
{
	do_spawn = true
}
else
{
	do_spawn = false
}
if(can_spawn && do_spawn)
{
	enemy = instance_create_layer(0,y,"Instances",obj_enemy_1)
	enemy.spawner = self
	self.spawn_count += 1
	self.can_spawn = false
	alarm[0] = room_speed * (spawn_delay * random_range(.5,3))
}