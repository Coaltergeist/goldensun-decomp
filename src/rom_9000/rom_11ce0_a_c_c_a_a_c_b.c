extern unsigned char L132fc[] __asm__(".L132fc");

int HeightTile_7(signed char *heights, int x, int y)
{
    int height0 = heights[0];
    int height1 = heights[1];

    return (height0 << 19) +
           ((height1 << 19) - (height0 << 19)) * L132fc[x + (y << 4)];
}
