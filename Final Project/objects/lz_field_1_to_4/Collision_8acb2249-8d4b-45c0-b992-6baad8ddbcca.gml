if(x >= room_width)
{
	obj_overworld_player.x = obj_overworld_player.sprite_width/6
}
else if(x < 0)
{
	obj_overworld_player.x = room_width - obj_overworld_player.sprite_width
}
else if(y >= room_height)
{
	obj_overworld_player.y = obj_overworld_player.sprite_height/6
}
else if(y < 0)
{
	obj_overworld_player.y = room_height - obj_overworld_player.sprite_height
}
room_goto(rm_field_4)