if global.menuscreen
{

if blink < 10
{
	image_alpha = 1
	if blink = 0 {blink += 1}
}
if blink > 10
{
	image_alpha = 0
	if blink = 20 {blink -= 1}
}
}


