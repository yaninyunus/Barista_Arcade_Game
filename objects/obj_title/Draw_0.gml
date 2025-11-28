if global.menuscreen
{

    if blink < 12
    {
		draw_self();
		image_alpha = 1;
		draw_set_font(fnt_8bit_mini);
		draw_set_alpha(1)
		draw_set_color(c_white);
		draw_set_halign(fa_center);
		draw_set_valign(fa_middle);
		draw_text(room_width/2, 188,"WELCOME TO");
    }
    else if blink < 24
    {
        image_alpha = 0; // invisible
    }
    else
    {
        blink = 0; // restart cycle
    }

}