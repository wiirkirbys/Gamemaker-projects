if(game_state == -1)
{
	draw_set_color(c_white)
	draw_set_halign(fa_center)
	draw_text(room_width/2,room_height/2, "GAME OVER")
	draw_text(room_width/2,room_height/2+20, "Final score: "+string(score))
}
