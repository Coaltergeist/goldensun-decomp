unsigned int OvlFunc_899_200c7bc(unsigned int arg0, unsigned int arg1, unsigned int arg2)
{
    int actor;
    int x, y;
    int dx, dy;

    actor = __GetFieldActor(arg2);
    x = *(int *)((char *)actor + 0x38);
    if (x == 0x80000000) x = *(int *)((char *)actor + 8);
    y = *(int *)((char *)actor + 0x40);
    if (y == 0x80000000) y = *(int *)((char *)actor + 0x10);
    dx = (x - (int)arg0) >> 16;
    dy = (y - (int)arg1) >> 16;
    if (dy * dy + dx * dx <= 0x40) return 1;
    return 0;
}
