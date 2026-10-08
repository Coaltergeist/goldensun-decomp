extern void __Func_80958a8(void);
extern void __Func_80958e4(void);
extern void __Func_80b0840(int);
extern void __Func_80b0894(void);
extern void __Func_80974d8(int *);
extern void __Func_809ba90(void *, int, int, int);
extern void __Func_809ba7c(void *, void *);
extern void __Func_809ba70(void *, int);
extern int __Random(void);
extern void __Sprite_SetColorswap(void *, unsigned int);
extern void __Func_8010788(int, int, int, int, int, int);
extern void OvlFunc_957_200ba30(void *);

void OvlFunc_957_200bad4(void)
{
    unsigned char *base;
    unsigned char *p;
    int pos[3];
    unsigned int v;
    int i;

    __Func_80958a8();
    base = iwram_3001f30;
    __Func_80b0840(0x202108);
    pos[0] = 0x1f80000;
    pos[1] = 0x180000;
    pos[2] = 0x900000;
    __Func_80974d8(pos);

    p = base + 0x58;
    for (i = 23; i >= 0; i--) {
        __Func_809ba90(p, 0x11c, pos[0], pos[2]);
        __Func_809ba7c(p, OvlFunc_957_200ba30);
        __Func_809ba70(p, 7);
        __Sprite_SetColorswap(*(void **)p, ((unsigned int)__Random() * 7) >> 16);
        v = (unsigned int)__Random() / 3 + 0x18000;
        *(unsigned int *)(p + 0x2c) = v;
        *(unsigned int *)(p + 0x28) = v;
        API_WaitFrames(1);
        p += 0x48;
    }

    API_WaitFrames(0x50);
    __Func_8010788(0x29, 0x37, 3, 2, 0x1e, 0x37);
    API_Func_8010704(0x2a, 8, 1, 1, 0x1f, 8);
    API_WaitFrames(0x32);
    API_Func_8012330(-1, -1, 0xe666);
    API_WaitFrames(0x1e);

    p = base + 0x98;
    for (i = 23; i >= 0; i--) {
        if (*(signed char *)(p + 5) != 0)
            *p = 2;
        p += 0x48;
    }

    API_Func_8012350();
    __Func_80b0894();
    __Func_80958e4();
}