int HeightTile_B(unsigned char *p, int unused, int index)
{
    int b1, b2, diff, prod, res;
    unsigned char *ptr = p;

    b1 = (*ptr) << 19;
    ptr++;
    b2 = (*ptr) << 19;
    ptr++;

    if (index <= 7) {
        diff = b2 - b1;
        prod = index * diff;
        if (prod < 0) prod += 7;
        res = prod >> 3;
        return b1 + res;
    } else {
        int b3;
        b3 = (*ptr) << 19;
        diff = b3 - b2;
        prod = (index - 8) * diff;
        if (prod < 0) prod += 7;
        res = prod >> 3;
        return b2 + res;
    }
}
