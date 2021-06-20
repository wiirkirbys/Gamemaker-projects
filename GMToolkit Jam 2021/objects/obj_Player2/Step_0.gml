/// @description Controls gravity and collision

//checks floor
if(place_meeting(x,y+4,obj_wall_parent))
{
	if(instance_place(x,y+4,obj_wall_parent).Color != Color && Color != 0 && instance_place(x,y+4,obj_wall_parent).Color != "White")
	{
		instance_destroy()
		game_controller.state = "Defeat"
	}
	if(!grounded)
	{ 
		vspeed = 0
		//adjusts speed when lanfing on moving platforms
		if(instance_place(x,y,obj_move_platform) != noone)
		{
			hspeed = instance_place(x,y,obj_move_platform).hspeed
		}
	}
	grounded = true
	gravity = 0
	if(place_meeting(x,y,obj_wall_parent))
	{
		y-=1
	}
}
else
{
	grounded = false
	gravity = .25
}

//checks left wall
if(place_meeting(x-8,y,obj_wall_parent) && hspeed < 0)
{
	if(instance_place(x-8,y,obj_wall_parent).Color != Color && Color != 0 && instance_place(x-8,y,obj_wall_parent).Color != "White")
	{
		instance_destroy()
		game_controller.state = "Defeat"
	}
	hspeed = baseSpeed
}
//checks right wall
if(place_meeting(x+8,y,obj_wall_parent) && hspeed > 0)
{
	if(instance_place(x+8,y,obj_wall_parent).Color != Color && Color != 0 && instance_place(x+8,y,obj_wall_parent).Color != "White")
	{
		//defeat
	}
	hspeed = baseSpeed
}

//checks for moving platform
if(instance_place(x,y,obj_move_platform) != noone)
{
	baseSpeed = instance_place(x,y,obj_move_platform).hspeed
}
else
{
	baseSpeed = 0
}

	