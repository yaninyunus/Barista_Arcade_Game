if global.menuscreen
{
    blink += 0.2;

    if blink < 12
    {
        image_alpha = 1; // visible
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

