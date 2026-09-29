extern int __GetFlag(int);
extern void __MapActor_SetAnim(int, int);
extern void __MapActor_SetPos(int, int, int);

int GomaCaveEntry_MapInit(void)
{
    unsigned char *p;
    int t1, t2;

    __SetFlag(0x144);
    __CutsceneWait(10);
    __Func_8091ff0(0xaa);
    __MapActor_SetAnim(0xb, 2);
    *(unsigned char *)(__MapActor_GetActor(0xb) + 0x23) = 2;

    p = __MapActor_GetActor(8);
    p += 0x59;
    { int v = 0x10; v |= *p; *p = v; }

    p = __MapActor_GetActor(0xf);
    p += 0x59;
    { int v = 8; v |= *p; *p = v; }

    if (__GetFlag(0x865)) {
        t1 = 0x49;
        t2 = 0xb;
        __Func_8010704(0x4a, 0xb, 1, 1, t1, t2);
    }

    if (__GetFlag(0x860)) {
        int c12;
        int a0;
        __MapActor_SetPos(8, 0x88 << 16, 0xc4 << 16);
        p = __MapActor_GetActor(8) + 0x23;
        *p |= 2;
        __MapActor_SetAnim(8, 2);
        c12 = 0xc;
        t1 = 8;
        a0 = 0x27;
        __Func_8010704(a0, c12, 3, 1, t1, c12);
        t1 = 0xb;
        a0 = 0x2b;
        __Func_8010704(a0, 0xb, 3, 1, c12, t1);
    }

    if (__GetFlag(0x861)) {
        __MapActor_SetPos(9, 0x84 << 17, 0x9c << 17);
        t1 = 0x10;
        t2 = 0x12;
        __Func_8010704(0x30, 0x12, 1, 2, t1, t2);
    } else if (__GetFlag(0x862)) {
        __MapActor_SetPos(9, 0x8c << 17, 0x9c << 17);
        t1 = 0x10;
        t2 = 0x12;
        __Func_8010704(0x2f, 0x12, 1, 2, t1, t2);
    }

    if (__GetFlag(0x863)) {
        int zero = 0;
        __MapActor_SetPos(10, 0xbc << 17, 0x8c << 17);
        *(unsigned char *)(__MapActor_GetActor(10) + 0x23) = 2;
        p = __MapActor_GetActor(10) + 0x55;
        p[0] = zero;
        __Actor_SetSpriteFlags(__MapActor_GetActor(10), zero);
        t1 = 0x17;
        t2 = 0x11;
        __Func_8010704(0x36, 0x11, 1, 1, t1, t2);
    }

    return 0;
}
