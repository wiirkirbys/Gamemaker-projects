if(is_acting)
{
	draw_sprite(bg_textbox,1,236,508)
	draw_set_font(fnt_segoe_UI)
	draw_set_halign(fa_left)
	draw_set_color(c_white)
	draw_text(286,538,"MOVE")
	draw_text(286,588,ability_name)
	draw_text(286,638,ultimate_name)
	
	if( menu_selection == 0)
	{
	draw_rectangle(268,547,278,557,false)
	}
	if( menu_selection == 1)
	{
	draw_rectangle(268,547+50,278,557+50,false)
	}
	if( menu_selection == 2)
	{
	draw_rectangle(268,547+100,278,557+100,false)
	}
	if(ultimate_charge >= 100)
	{
		draw_rectangle(268-10,547+100-8,278-15,557+100,false)
		draw_rectangle(268-10,547+100+16,278-15,557+100+12,false)
	}
}
else if(is_moving)
{
	draw_rectangle(cursor_x*34+282,cursor_y*34+282,cursor_x*34+292,cursor_y*34+292,false)
}