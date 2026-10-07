int HeightTile_4(signed char *arg0, unsigned int arg1, unsigned int arg2) {
    int a;
    int b;
    int max;
    int diff;

    a = arg0[0] << 19;
    b = arg0[1] << 19;
    max = a;
    if (b > a) {
        max = b;
    }

    diff = arg2 - arg1;
    diff += 15;

    if (diff == 15) {
        return max;
    }
    if ((unsigned int)diff > 14) {
        return b;
    }
    return a;
}
