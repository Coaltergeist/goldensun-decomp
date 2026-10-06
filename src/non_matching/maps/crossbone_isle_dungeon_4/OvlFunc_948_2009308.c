void OvlFunc_948_2009308(void)
{
    unsigned char *actor;
    unsigned char *base;
    unsigned char *gs;
    int x;
    int z;

    actor = __MapActor_GetActor(0);
    x = *(int *)(actor + 8) / 0x100000;
    z = *(int *)(actor + 0x10) / 0x100000;
    base = *(unsigned char **)iwram_3001ebc;

    if (!API_GetFlag(0x220)) {
        gs = (unsigned char *)&gState;
        if (*(short *)(gs + 0x24c) == 0
            && *(short *)(gs + 0x24a) != 8
            && x >= 0x15 && x <= 0x17
            && z > 9 && z <= 0xb) {
            API_SetFlag(0x220);
            *(unsigned short *)(base + 0x182) = 0x5b;
        }
    }
}
