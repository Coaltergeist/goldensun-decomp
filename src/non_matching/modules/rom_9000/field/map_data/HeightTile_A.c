int HeightTile_A(signed char *p, int idx)
{
    int a, b, c, t;

    a = p[0] << 19;
    b = p[1] << 19;
    if ((unsigned int)idx <= 7) {
        t = idx * (b - a);
        if (t < 0) t += 7;
        return a + (t >> 3);
    } else {
        c = p[2] << 19;
        t = (idx - 8) * (c - b);
        if (t < 0) t += 7;
        return b + (t >> 3);
    }
}
