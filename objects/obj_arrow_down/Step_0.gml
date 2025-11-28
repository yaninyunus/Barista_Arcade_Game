if global.menuscreen
{
    blink += 0.2;

    if blink < 10
    {
        image_alpha = 1; // visible
    }
    else if blink < 20
    {
        image_alpha = 0; // invisible
    }
    else
    {
        blink = 0; // restart cycle
    }
}

