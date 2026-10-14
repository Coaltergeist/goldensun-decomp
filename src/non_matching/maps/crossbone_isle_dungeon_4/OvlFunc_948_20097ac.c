void OvlFunc_948_20097ac(void)
{
    struct Actor *a;
    int x;
    int z;
    unsigned char *base;
    unsigned char *gs;
    short *f1;
    short *f2;

    a = (struct Actor *)__MapActor_GetActor(0);
    x = a->pos.x / 0x100000;
    z = a->pos.z / 0x100000;
    base = *(unsigned char **)iwram_3001ebc;
    gs = (unsigned char *)&gState;
    f1 = (short *)(gs + 0x24a);
    if (*f1 != 0xc && !API_GetFlag(0x220)) {
        f2 = (short *)(gs + 0x24c);
        if (*f2 == 0 && x == 0x13 && (unsigned int)(z - 0xf) <= 1) {
            unsigned short v = 0x60;
            API_SetFlag(0x220);
            *(unsigned short *)(base + 0x182) = v;
        }
    }
}
