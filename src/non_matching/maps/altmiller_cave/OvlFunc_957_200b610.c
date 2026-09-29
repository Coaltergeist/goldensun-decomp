void OvlFunc_957_200b610(unsigned int arg0)
{
    unsigned char *r5;
    unsigned int *actor;
    unsigned char *r4;
    unsigned char b3;
    unsigned char b1;

    r5 = (unsigned char *)arg0;
    if (r5 != 0) {
        *(unsigned char *)(r5 + 0x23) = 0;
        actor = __MapActor_GetActor(0);
        r4 = *(unsigned char **)(r5 + 0x50);
        b3 = *(unsigned char *)(*(unsigned int *)((char *)actor + 0x50) + 9) & 0xc;
        b1 = *(unsigned char *)(r4 + 9);
        *(unsigned char *)(r4 + 9) = (b1 & ~0xd) | b3;
    }
}
