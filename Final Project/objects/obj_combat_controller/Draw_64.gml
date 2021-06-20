draw_sprite_stretched(spr_HERO,1,100,250,50,50)
draw_sprite_stretched(spr_PRINCESS,1,100,75+250,50,50)
draw_sprite_stretched(spr_BEAST,1,100,2*75+250,50,50)
for(i = 0; i<3; i++)
{
	draw_healthbar(100,i*75+250,150,i*75+300,100-ally_array[i].stat_health,c_black,c_black,c_black,2,false,false)
}