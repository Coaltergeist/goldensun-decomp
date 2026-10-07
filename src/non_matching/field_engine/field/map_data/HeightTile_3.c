int HeightTile_3(signed char *p, int r1, int r2)
{
    int r4, r3, b1;

    r4 = (int)p[0] << 19;
    b1 = (int)p[1] << 19;
    r3 = r4;
    if (b1 > r4)
        r3 = b1;
    r1 += r2;
    if (r1 == 15)
        return r3;
    if (r1 > 14)
        return b1;
    return r4;
}
