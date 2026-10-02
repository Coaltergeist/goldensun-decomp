void OvlFunc_897_200ae5c(unsigned char *actor)
{
    extern int __sin(int);
    unsigned char *target;
    short count;
    int s;

    target = *(unsigned char **)(actor + 0x68);
    count = ++*(short *)(actor + 0x64);
    if (count > 0x1f) {
        API_DeleteActor((int)actor);
        return;
    }
    s = __sin(count << 10);
    *(int *)(actor + 0x18) = s;
    *(int *)(actor + 0x1c) = -s;
    *(int *)(actor + 0x8) = *(int *)(target + 0x8);
    *(int *)(actor + 0xc) += 0x10000;
    *(int *)(actor + 0x10) = *(int *)(target + 0x10) - (0x10000 - s) * 5 + 0x100000;
}
