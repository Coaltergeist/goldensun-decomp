extern void *__MapActor_GetActor(int);
extern unsigned char iwram_3001ebc[];

void OvlFunc_933_2009054(void)
{
    extern unsigned int iwram_3001e40;
    GlobalState *p = &gState;
    char *actor;
    char *base;
    struct EffectData933 data;
    unsigned int flags;

    actor = (char *)__MapActor_GetActor(*(int *)((char *)p + (0xfa << 1)));
    base = *(char **)iwram_3001ebc;

    if (*(int *)(actor + 0x38) == (int)(0x80 << 24))
        return;

    *(short *)((char *)p + 0x232) += 1;

    if (*(short *)(base + (0xb6 << 1)) == 0x1e)
        return;

    if (*(int *)(actor + 0x30) <= (0x80 << 9)) {
        int offset;
        unsigned short facing;

        if ((iwram_3001e40 & 0xf) != 0)
            return;

        data.unk8 = 0x80 << 8;
        data.unkc = 0x80 << 8;
        offset = 0;
        data.unk22 = (short)((((unsigned int)__Random() << 12) >> 16) + (0xf8 << 8));
        facing = *(unsigned short *)(actor + 6);
        if (facing != 0 && facing != (0x80 << 8)) {
            int t = (*(int *)(actor + 0x10) >> 20) & 1;
            offset = (0x80 << 10) - ((t * 5) << 16);
        }
        OvlFunc_common0_10c(*(int *)(actor + 8) + offset, *(int *)(actor + 0xc), *(int *)(actor + 0x10), 0, 0, 0, 0x880001, &data);
    } else {
        int speed;

        flags = iwram_3001e40 & 7;
        if (flags != 0)
            return;

        data.unk8 = 0xcccc;
        data.unkc = 0xcccc;
        data.unk22 = (short)((((unsigned int)__Random() << 12) >> 16) + (0xf8 << 8));
        speed = (((unsigned int)__Random() * 5) >> 16) * 0x1999;
        OvlFunc_common0_10c(*(int *)(actor + 8), *(int *)(actor + 0xc) + (0x80 << 10), *(int *)(actor + 0x10), 0, speed, flags, 0x880001, &data);
    }
}
