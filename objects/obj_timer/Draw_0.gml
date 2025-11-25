if t_sec = 0
exit

draw_set_colour(c_white)
if t_sec <= 5 draw_set_colour(make_colour_rgb(223, 148, 157))
draw_set_font(fnt_8bit)
draw_set_halign(fa_left)
draw_set_valign(fa_top)

var t =""
t += string(t_sec)

draw_text(10,10,t)
