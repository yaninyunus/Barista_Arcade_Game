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
	draw_text(room_width/2, 100,"GAME OVER");
	draw_set_font(fnt_8bit_mini);
	draw_text(room_width/2, 124,"YOUR SCORE IS " + string(global.score) + " POINTS");
	draw_text(room_width /2 , 134, "YOUR HIGH SCORE IS " + string(floor(global.highScore)) + " POINTS");

	if gameOverAlarm = true
	{
		draw_set_font(fnt_8bit_mini);
		draw_text(room_width/2, 186,"PRESS Z & R TO RESTART");
		draw_text(room_width/2, 196,"PRESS X TO RETURN TO MENU");
	}
	exit;
}

if global.twentysec || global.endless
	{
		//SCORE BOARD
	    draw_set_color(c_white);
		draw_set_font(fnt_8bit);
		draw_set_halign(fa_right);
		draw_set_valign(fa_top);
		draw_text(230,10,string(global.score))
	}	
	

