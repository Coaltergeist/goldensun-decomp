extern unsigned char Lconst_0[] __asm__(".Lconst_0");

__asm__(".equ .Lconst_0, 0");

int Lalivero_MapInit(void)
{
    unsigned int r0;
    int r1;
    unsigned short r2;
    int r3;
    int zero;
    int one;
    int c_f;
    int arg6;

    unsigned short *p;
    int mask;
    int rot;

    r3 = (unsigned int)&gState;
    r0 = 0xe1;
    r0 <<= 1;
    r0 += r3;
    p = (unsigned short *)r0;
    r1 = 0;
    r3 = *(short *)((char *)r0 + r1);
    r2 = *p;
    if (r3 == 0x5a) {
        __SetFlag(0x9a7);
        __SetFlag(0x9bf);
        r2 = *p;
    }
    if ((r2 << 16) == (0x5b << 16)) {
        __SetFlag(0x9a7);
    }
    r1 = *(int *)iwram_3001ebc;
    r3 = 0xe0;
    r3 <<= 1;
    r0 = 0xe4;
    r2 = r1 + r3;
    r0 <<= 1;
    r3 -= 0xc0;
    *(int *)r2 = r3;
    r2 = r1 + r0;
    r3 = 0x18;
    *(int *)r2 = r3;

    __MapActor_SetAnim(0x13, 3);
    zero = 0;
    ((unsigned char *)__MapActor_GetActor(0x13))[0x59] = zero;
    __Actor_SetSpriteFlags(__MapActor_GetActor(0x13), 0);

    __MapActor_SetAnim(0x14, 3);
    ((unsigned char *)__MapActor_GetActor(0x14))[0x59] = zero;
    __Actor_SetSpriteFlags(__MapActor_GetActor(0x14), 0);

    __MapActor_SetAnim(0x15, 3);
    ((unsigned char *)__MapActor_GetActor(0x15))[0x59] = zero;
    __Actor_SetSpriteFlags(__MapActor_GetActor(0x15), 0);

    __Actor_SetSpriteFlags(__MapActor_GetActor(0x19), 0);
    {
        unsigned char *actor = (unsigned char *)__MapActor_GetActor(0x19);
        unsigned char *sprite;
        unsigned char *buf;
        one = 1;
        actor[0x5c] = one;
        actor[0x55] = zero;
        *(int *)(actor + 0xc) = 0xa0 << 12;
        sprite = *(unsigned char **)(actor + 0x50);
        sprite[0x27] = zero;
        mask = -0x21;
        sprite[5] &= mask;
        c_f = 0xf;
        sprite[9] &= c_f;
        buf = (unsigned char *)__galloc_iwram(0x11, 0xc1 << 3);
        __LoadItemIcon(0xf2);
        buf += 0x80 << 3;
        __UploadSpriteGFX(sprite[0x1c], 0x80, buf);
        __gfree(0x11);
    }

    if (__GetFlag(0x9a7) != 0) {
        __Actor_SetSpriteFlags(__MapActor_GetActor(0x18), 0);
        ((unsigned char *)__MapActor_GetActor(0x18))[0x59] = zero;
        arg6 = 4;
        __Func_8010704(0x14, 0x17, 1, 1, 0xe, arg6);
        __Func_8010704(0x14, 0x17, 1, 1, c_f, arg6);
        __Func_8010704(0x14, 0x17, 1, 1, 0x10, arg6);
        if (__GetFlag(0x9bb) != 0) {
            int x = 0xe0;
            int y = 0xb8;
            int id = 0x12;
            x <<= 14;
            y <<= 16;
            __MapActor_SetPos(id, x, y);
        }
    } else {
        int r5 = 2;
        unsigned char *a8 = (unsigned char *)__MapActor_GetActor(8);
        unsigned char *s8;
        unsigned char *a9;
        unsigned char *s9;
        a8[0x59] = 0;
        a8[0x23] |= r5;
        s8 = *(unsigned char **)(a8 + 0x50);
        s8[0x26] = 0;
        rot = 0xc0;
        rot <<= 8;
        *(short *)(s8 + 0x1e) = rot;

        a9 = (unsigned char *)__MapActor_GetActor(9);
        zero = (int)Lconst_0;
        a9[0x59] = zero;
        a9[0x23] |= r5;
        s9 = *(unsigned char **)(a9 + 0x50);
        s9[0x26] = zero;
        rot = 0x80;
        rot <<= 7;
        *(short *)(s9 + 0x1e) = rot;

        arg6 = 0x17;
        __Func_8010704(0x14, 0x17, 1, 1, 0xd, arg6);
        __Func_8010704(0x14, 0x17, 1, 1, 0xe, arg6);
        __Func_8010704(0x14, 0x17, 1, 1, 0x4e, arg6);
        __Func_8010704(0x14, 0x17, 1, 1, 0x11, arg6);
        __Func_8010704(0x14, 0x17, 1, 1, 0x12, arg6);

        if ((unsigned int)((*p - 0x14) << 16) <= 0x10000) {
            if (__GetFlag(0x9b8) == 0) {
                __SetFlag(0x9b8);
                ((unsigned char *)__MapActor_GetActor(0xb))[0x5b] = one;
                ((unsigned char *)__MapActor_GetActor(0x11))[0x5b] = one;
                OvlFunc_966_2008218();
                ((unsigned char *)__MapActor_GetActor(0xb))[0x5b] = zero;
                ((unsigned char *)__MapActor_GetActor(0x11))[0x5b] = zero;
            }
        }
    }

    return 0;
}
