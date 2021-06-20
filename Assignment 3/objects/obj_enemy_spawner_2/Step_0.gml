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
	enemy = instance_create_layer(irandom_range(30,960),-32,"Instances",obj_enemy_2)
	enemy.spawner = self
	self.spawn_count += 1
	self.can_spawn = false
	alarm[0] = room_speed * (spawn_delay * random_range(1,3))
}