typedef unsigned char u8;
typedef unsigned int u32;
extern u8 *__MapActor_GetActor(int);
extern void __CutsceneStart(void);
extern void __CopyMapTiles(int, int, int, int, int, int);
extern void __PlaySound(int);
extern u8 localData asm(".L6064");
extern void __Func_8010560(const void *, int, int);
extern void __Func_8010704(int, int, int, int, int, int);
extern void __SetFlag(int);
extern void __CutsceneEnd(void);
extern u8 *GetActor_NoArgs(void) asm("__MapActor_GetActor");

void OvlFunc_924_2009bf0(void)
{
    register u8 *actor asm("r0");
    register int x asm("r6");
    register int z asm("r5");
    register int r2 asm("r2");
    register int r3 asm("r3");
    actor = __MapActor_GetActor(8);
    r3 = *(int *)(actor + 8);
    asm volatile("" : "+r"(r3));
    if (r3 < 0) {
        r2 = 0xfffff;
        asm volatile("" : "+r"(r2), "+r"(r3));
        r3 += r2;
        asm volatile("" : "+r"(r3));
    }
    actor = (u8 *)8;
    asm volatile("" : "+r"(actor), "+r"(r3));
    x = r3 >> 20;
    asm volatile("" : "+r"(actor), "+r"(x));
    actor = GetActor_NoArgs();
    r3 = *(int *)(actor + 0x10);
    asm volatile("" : "+r"(r3));
    if (r3 < 0) {
        r2 = 0xfffff;
        asm volatile("" : "+r"(r2), "+r"(r3));
        r3 += r2;
        asm volatile("" : "+r"(r3));
    }
    z = r3 >> 20;
    asm volatile("" : "+r"(z));
    __CutsceneStart();
    if (x == 0xa && z == 0x17) {
        actor = __MapActor_GetActor(8);
        r2 = 0xfffe0000;
        asm volatile("" : "+r"(actor), "+r"(r2));
        r3 = *(u32 *)(actor + 0xc);
        asm volatile("" : "+r"(actor), "+r"(r2), "+r"(r3));
        r3 += r2;
        asm volatile("" : "+r"(actor), "+r"(r3));
        *(u32 *)(actor + 0xc) = r3;
        actor = __MapActor_GetActor(8);
        z = (int)actor;
        asm volatile("" : "+r"(z));
        actor = (u8 *)8;
        asm volatile("" : "+r"(actor), "+r"(z));
        actor = GetActor_NoArgs();
        r3 = *(u32 *)(actor + 0xc);
        asm volatile("" : "+r"(r3), "+r"(z));
        *(u32 *)(z + 0x3c) = r3;
        __CopyMapTiles(6, 0x1d, 0xa, 0x17, 1, 1);
        __PlaySound(0xd9);
        __Func_8010560(&localData, 0xa, 0x12);
        __Func_8010704(0xa, 0x10, 1, 1, x, 0x13);
        __SetFlag(0x878);
    }
    __CutsceneEnd();
}
