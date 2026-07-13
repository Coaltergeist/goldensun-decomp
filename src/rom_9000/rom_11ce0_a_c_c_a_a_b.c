int HeightTile_4(signed char *heights, int x, int y)
{
    int height0 = heights[0] << 19;
    int height1 = heights[1] << 19;
    int height = height0;

    if (height1 > height0)
        height = height1;

    x = y - x + 15;
    if (x == 15)
        return height;
    if ((unsigned int)x < 15)
        return height0;
    return height1;
}
