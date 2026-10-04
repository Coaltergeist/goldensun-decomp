extern int __GetFlag(int);
extern int __Random(void);
extern void OvlFunc_common0_10c(int, int, int, int, int, int, int, void *);

int OvlFunc_960_20089cc(unsigned char *arg0)
{
    unsigned char *actor;
    unsigned char *p55;
    int off;
    int dx;
    int dz;

    off = 0xfa << 1;
    actor = __MapActor_GetActor(*(int *)((char *)&gState + off));
    *(int *)(arg0 + 0x34) = 0x80 << 7;
    *(int *)(arg0 + 0x30) = 0xc0 << 9;
    p55 = arg0 + 0x55;
    *p55 = 0;
    __Actor_SetSpriteFlags((unsigned int)arg0, 0);
    arg0[0x54] ^= 1;
    if (__GetFlag(0x82 << 1) != 0) {
        *(int *)(arg0 + 0x38) = 0x80 << 24;
        *(int *)(arg0 + 0x3c) = 0x80 << 24;
        *(int *)(arg0 + 0x40) = 0x80 << 24;
    } else {
        *(int *)(arg0 + 0x38) = *(int *)(actor + 8);
        *(int *)(arg0 + 0x3c) = *(int *)(actor + 0x14);
        *(int *)(arg0 + 0x40) = *(int *)(actor + 0x10);
        dx = *(int *)(arg0 + 8) - *(int *)(actor + 8);
        if (dx < 0)
            dx = -dx;
        dz = *(int *)(arg0 + 0x10) - *(int *)(actor + 0x10);
        if (dz < 0)
            dz = -dz;
        if (dx + dz < (0x80 << 12)) {
            unsigned char *p = iwram_3001ebc;
            if (actor[0x55] != 0) {
                int off2 = 0xc1 << 1;
                *(unsigned short *)(p + off2) = 0x37;
            }
            *p55 = 3;
            *(int *)(arg0 + 0x38) = *(int *)(actor + 8);
            *(int *)(arg0 + 0x3c) = *(int *)(actor + 0xc);
            *(int *)(arg0 + 0x40) = *(int *)(actor + 0x10);
        }
    }
    if ((iwram_3001e40 & 7) == 0) {
        unsigned char sp10[0x28];
        *(int *)(sp10 + 8) = 0xcccc;
        *(int *)(sp10 + 0xc) = 0xcccc;
        *(unsigned short *)(sp10 + 0x22) = (0xf8 << 8) + (((unsigned int)__Random() << 12) >> 16);
        OvlFunc_common0_10c(*(int *)(arg0 + 8), *(int *)(arg0 + 0xc), *(int *)(arg0 + 0x10), 0, 0, 0, 0x880001, sp10);
    }
    return 1;
}
