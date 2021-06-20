if(game_state == 0)
{
	draw_set_color(c_white)
	draw_text(100,100,"Score: " +string(score))
	draw_text(100,120,"Time: "+string(game_time - seconds))
	draw_text(100,140,"Focus: " +string(focus))
}
else
{
	draw_set_color(c_white)
	draw_set_halign(fa_center)
	draw_text(room_width/2,room_height/2, "GAME OVER")
	draw_text(room_width/2,room_height/2+20, "Final score: "+string(score))
}