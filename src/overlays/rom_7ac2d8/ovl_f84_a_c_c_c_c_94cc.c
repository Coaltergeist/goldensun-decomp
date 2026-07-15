typedef unsigned char u8;
typedef signed short s16;

extern u8 L6010[] asm(".L6010");
extern int __GetFlag(int);
extern void __SetFlag(int);
extern u8 *__MapActor_GetActor(int);
extern void __CutsceneStart(void);
extern void __CutsceneEnd(void);
extern void __CutsceneWait(int);
extern void __CopyMapTiles(int, int, int, int, int, int);
extern void __PlaySound(int);
extern void __Func_8010560(u8 *, int, int);

void OvlFunc_924_20094cc(void)
{
    int x;
    int y;
    u8 *actor;

    {
        register int flag asm("r0") = 0x256;
        if (__GetFlag(flag))
            return;
    }
    x = *(s16 *)(__MapActor_GetActor(0) + 0xa);
    y = *(s16 *)(__MapActor_GetActor(0) + 0x12);
    if ((unsigned)(x - 0x54) > 7 || y <= 0xd3 || y > 0xdb)
        return;

    __CutsceneStart();
    {
        register int flag asm("r0") = 0x256;
        __SetFlag(flag);
    }
    __CutsceneWait(5);
    *(int *)(__MapActor_GetActor(0) + 0xc) += -0x20000;
    actor = __MapActor_GetActor(0);
    *(int *)(actor + 0x3c) = *(int *)(__MapActor_GetActor(0) + 0xc);
    __CopyMapTiles(5, 2, 5, 0xb, 1, 1);
    __PlaySound(0xd9);
    __Func_8010560(L6010, 9, 7);
    __CutsceneEnd();
}
