extern void *__GetFieldActor(int arg);

unsigned int OvlFunc_899_200c7fc(int r5, int r6, int arg2)
{
    char *actor;
    unsigned int x, y;
    int dx, dy;

    actor = __GetFieldActor(arg2);
    if (*(unsigned int *)(actor + 0x38) == 0x80000000)
        x = *(unsigned int *)(actor + 8);
    else
        x = *(unsigned int *)(actor + 0x38);

    if (*(unsigned int *)(actor + 0x40) == 0x80000000)
        y = *(unsigned int *)(actor + 0x10);
    else
        y = *(unsigned int *)(actor + 0x40);

    dx = ((int)x - r5) >> 16;
    dy = ((int)y - r6) >> 16;

    return (dy * dy + dx * dx) <= 256 ? 1 : 0;
}
