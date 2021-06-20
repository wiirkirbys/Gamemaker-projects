/// @description Controls gravity and collision
if(place_meeting(x,y+4,obj_wall_parent))
{
	if(place_meeting(x,y+4, obJ_wall_white) && backColor == 0 || place_meeting(x,y+4, obJ_wall_black) && backColor == 1)//ignores background color
	{
		if(instance_place(x,y+4,obj_wall_parent).Color != Color && Color != 0 && instance_place(x,y+4,obj_wall_parent).Color != "White")
		{
			instance_destroy()
			game_controller.state = "Defeat"
		}
		if(!grounded)
		{ 
			vspeed = 0
		}
		grounded = true
		gravity = 0
		if(place_meeting(x,y,obj_wall_parent))
		{
			y-=1
		}
	}
}
else if (place_meeting(x,y+4, obJ_wall_white) && backColor == 1 || place_meeting(x,y+4, obJ_wall_black) && backColor == 0 || !place_meeting(x,y+4,obj_wall_parent))
{
	grounded = false
	gravity = .25
}

if(place_meeting(x-8,y,obj_wall_parent) && hspeed < 0)
{
	if(instance_place(x-8,y,obj_wall_parent).Color != Color && Color != 0 && instance_place(x-8,y,obj_wall_parent).Color != "White")
	{
		instance_destroy()
		game_controller.state = "Defeat"
	}
	hspeed = 0
}
if(place_meeting(x+8,y,obj_wall_parent) && hspeed > 0)
{
	if(instance_place(x+8,y,obj_wall_parent).Color != Color && Color != 0 && instance_place(x+8,y,obj_wall_parent).Color != "White")
	{
		instance_destroy()
		game_controller.state = "Defeat"
	}
	hspeed = 0
}

	