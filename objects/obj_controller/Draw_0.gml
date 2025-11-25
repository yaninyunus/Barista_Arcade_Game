if global.gameOver
{
    draw_set_color(c_black);
	draw_set_alpha(0.5)
    draw_rectangle(0, 0, room_width, room_height, false);

	
	draw_set_font(fnt_8bit);
	draw_set_alpha(1)
	draw_set_color(c_white);
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	draw_text(room_width/2, room_height/2,"GAME OVER");

}