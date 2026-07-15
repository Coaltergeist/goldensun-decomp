typedef unsigned char u8;
typedef unsigned short u16;
typedef short s16;

typedef struct MapActor {
    u8 pad0[8];
    int x;
    u8 pad0c[4];
    int y;
} MapActor;

extern MapActor *__MapActor_GetActor(int actorId);
extern int __GetFlag(int flag);
extern void __SetFlag(int flag);
extern int GetPreparedFlag(void) asm("__GetFlag");
extern void SetPreparedFlag(void) asm("__SetFlag");
extern u8 *iwram_3001ebc;
extern u8 gState[];

void OvlFunc_948_20097ac(void)
{
    MapActor *actor = __MapActor_GetActor(0);
    register int rawX asm("r3") = actor->x;
    register int rawY asm("r0");
    register int x asm("r8");
    register int y asm("r6");
    register u8 *work asm("r7");
    register u8 *state asm("r5");

    if (rawX < 0)
        rawX += 0xfffff;
    rawY = actor->y;
    x = rawX >> 20;
    if (rawY < 0)
        rawY += 0xfffff;
    work = iwram_3001ebc;
    state = gState;
    y = rawY >> 20;

    if (*(s16 *)(state + 0x24a) != 12 &&
        !({ asm volatile("mov r0,#0x88\nlsl r0,#2" ::: "r0"); GetPreparedFlag(); }) &&
        *(s16 *)(state + 0x24c) == 0 &&
        x == 0x13 &&
        (unsigned)(y - 0xf) <= 1) {
        asm volatile("mov r0,#0x88\nlsl r0,#2" ::: "r0");
        SetPreparedFlag();
        asm volatile(
            "mov r3,#0xc1\nlsl r3,#1\nadd r2,%0,r3\nmov r3,#0x60\nstrh r3,[r2]"
            : : "r" (work) : "r2", "r3", "memory");
    }
    asm volatile("" : : "r" (state), "r" (y));
}
