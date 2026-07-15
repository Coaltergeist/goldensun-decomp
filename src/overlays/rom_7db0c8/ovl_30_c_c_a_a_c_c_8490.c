typedef unsigned char u8;
typedef unsigned int u32;

extern u8 gState[];
extern volatile u32 gKeyHeld;
extern u8 *__MapActor_GetActor(int);
extern void __Func_8010704(int, int, int, int, int, int);
extern void OvlFunc_954_200833c(int, int, int);

void OvlFunc_954_2008490(void)
{
    register int x asm("r7");
    register int y asm("r6");
    register int direction asm("r5");
    register u8 *state asm("r3");
    register int offset asm("r2");
    register volatile u32 *keys asm("r1");
    register int temp3 asm("r3");
    u8 *actor;

    state = gState;
    offset = 0xfa;
    offset <<= 1;
    state += offset;
    actor = __MapActor_GetActor(*(int *)state);
    keys = &gKeyHeld;
    asm volatile("" : "+r"(keys));
    x = *(int *)(actor + 8) >> 20;
    if (*keys & 0x20)
        direction = -1;
    if (*keys & 0x10)
        direction = 1;
    actor = __MapActor_GetActor(0x11);
    temp3 = *(int *)(actor + 0x10);
    y = temp3 >> 20;
    asm volatile("" : "+r"(temp3), "+r"(y));

    if (x == 0x3f) {
        if (y == 0x0b)
            return;
        y = 0xa0;
    } else if (x == 0x43) {
        if (y == 0x0b && direction == -1)
            return;
        y = 0x60;
    } else {
        if (y == 0x0b)
            y = 0x60;
        else
            y = 0xa0;
        y = -y;
    }

    __Func_8010704(0x48, 9, 1, 3, x, 9);
    OvlFunc_954_200833c(0x12, y, 0);
    actor = __MapActor_GetActor(0x12);
    x = *(int *)(actor + 8) >> 20;
    __Func_8010704(0x3f, 0x19, 1, 3, x, 9);
}
