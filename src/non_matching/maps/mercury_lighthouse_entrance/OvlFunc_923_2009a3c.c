struct DmaRegs {
    const volatile void *src;
    void *dest;
    unsigned int cnt;
};

extern unsigned int *__galloc_ewram(int, int);
extern int __GetFlag(int);
extern unsigned char *__GetFieldActor(int);
extern void *__CreateActor(int, int, int, int);
extern void __Sprite_SetAnim(void *, int);
extern unsigned char gState[];
extern unsigned char gBuffer[];
extern unsigned char gScript_923__0200a7e8[];
extern unsigned char gScript_923__0200a7d0[];

void OvlFunc_923_2009a3c(int arg0, int *arg1)
{
    unsigned char *actor;
    unsigned char *obj;
    unsigned char *sprite;
    unsigned char *cell;
    volatile int zero;
    int z;
    int off;

    *__galloc_ewram(0x23, 4) = (unsigned int)arg1;

    if (__GetFlag(0x109) == 0) {
        struct DmaRegs dma;
        zero = 0;
        dma.src = &zero;
        dma.dest = arg1;
        dma.cnt = 0x85000007;
        *(volatile struct DmaRegs *)0x040000d4 = dma;
        arg1[1] = arg0;
        return;
    }

    off = 0xfa;
    actor = __GetFieldActor(*(int *)(gState + (off << 1)));
    z = *(int *)(actor + 0x10);
    cell = gBuffer + (((z / 0x100000) << 7) + *(int *)(actor + 8) / 0x100000) * 4;

    if (arg1[0] != 0 && arg1[5] != 0) {
        obj = (unsigned char *)__CreateActor(0x1a, *(int *)(actor + 8), *(int *)(actor + 0xc) + 0x180000, z);
        if (obj != 0) {
            *(int *)(obj + 0x14) = *(int *)(actor + 0x14);
            sprite = *(unsigned char **)(obj + 0x50);
            __Actor_SetScript(obj, gScript_923__0200a7e8);
            *(unsigned char **)(obj + 0x68) = actor;
            obj[0x55] = 4;
            *(int *)(obj + 0xc) += -0x8000;
            if (sprite != 0) {
                __Sprite_SetAnim(sprite, 6 - arg1[0]);
                sprite[0x26] = 0;
                sprite[9] = (sprite[9] & ~0xc) | 4;
            }
            arg1[5] = (int)obj;
        }
    } else {
        arg1[5] = 0;
    }

    if (cell[2] == arg0 && arg1[6] != 0) {
        obj = (unsigned char *)__CreateActor(0x1a, *(int *)(actor + 8),
                                             *(int *)(actor + 0xc),
                                             *(int *)(actor + 0x10));
        if (obj != 0) {
            *(int *)(obj + 0x14) = *(int *)(actor + 0x14);
            sprite = *(unsigned char **)(obj + 0x50);
            __Actor_SetScript(obj, gScript_923__0200a7d0);
            obj[0x55] = 0;
            *(unsigned short *)(obj + 0x64) = 0;
            obj[0x23] = 2;
            *(int *)(obj + 0x30) = 0x40000;
            if (sprite != 0) {
                __Sprite_SetAnim(sprite, 6);
                sprite[0x26] = 0;
            }
            arg1[6] = (int)obj;
        }
    } else {
        arg1[6] = 0;
    }
}
