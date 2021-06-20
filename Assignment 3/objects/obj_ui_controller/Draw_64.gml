if(game_state = 0)
{
	draw_healthbar(100,730,990,745,health,c_black,c_red,c_green,0,false,false)
	draw_set_font(fnt_text)
	draw_set_color(c_white)
	draw_set_halign(fa_left)
	draw_text(30,730,"Health:")
	draw_set_font(fnt_text)
	draw_set_color(c_white)
	draw_set_halign(fa_left)
	draw_text(30,660,"Score:")
	draw_text(30,690,score)
}
else
{
	draw_set_font(fnt_text)
	draw_set_color(c_white)
	draw_set_halign(fa_center)
	draw_text(512,350,"Game Over")
	draw_text(512,380,"Score:")
	draw_text(512,410,score)
}