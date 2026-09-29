unsigned int Func_800eba0(int *a, int r1, int *b, int r3)
{
    int dz, dx, dy;
    int radius;

    dz = (a[0] - b[0]) >> 16;
    dx = (a[1] - b[1]) >> 16;
    dy = (a[2] - b[2]) >> 16;
    radius = r1 + r3;
    if (dz > 0x400000) {
        return -1;
    }
    if (dy > 0x400000) {
        return -1;
    }
    if (dx * dx + dz * dz + dy * dy < radius * radius) {
        return 0;
    }
    return -1;
}
