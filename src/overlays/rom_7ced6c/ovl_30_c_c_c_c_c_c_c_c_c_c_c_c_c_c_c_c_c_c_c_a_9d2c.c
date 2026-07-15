typedef unsigned char u8;
extern u8 *__MapActor_GetActor(int);
extern void OvlFunc_946_2009774(int, int, int);
extern void __WaitFrames(int);
extern void __Func_8010704(int,int,int,int,int,int);

void OvlFunc_946_2009d2c(void)
{
    register int x asm("r7");
    register int y asm("r6");
    register int near_x asm("r5");
    register int other_x asm("r3");
    int next_x;
    register int direction asm("r2");

    (void)__MapActor_GetActor(0xa);
    asm volatile(
        "ldr r3, [r0, #8]\n\tmov r0, #0xa\n\tasr r7, r3, #20\n\t"
        "bl __MapActor_GetActor\n\tldr r3, [r0, #0x10]\n\tmov r0, #0xd\n\t"
        "asr r6, r3, #20\n\tbl __MapActor_GetActor\n\tldr r3, [r0, #8]\n\t"
        "mov r0, #0xf\n\tasr r5, r3, #20\n\tbl __MapActor_GetActor\n\t"
        "ldr r3, [r0, #8]\n\tasr r3, #20"
        : "=r"(x), "=r"(y), "=r"(near_x), "=r"(other_x)
        : : "r0", "r1", "r2", "lr", "memory");

    if (y == 0x12) {
        if ((unsigned)(other_x - 0x1f) <= 2) {
            asm volatile("mov r2, #0x80" : "=r"(direction));
        } else {
            register int test asm("r3");
            asm volatile("mov r3, r5" : "=r"(test) : "r"(near_x));
            if ((unsigned)(test - 0x1f) <= 2) {
                asm volatile("mov r2, #0x80" : "=r"(direction));
            } else {
                OvlFunc_946_2009774(0xa, 0, -0x70);
                asm volatile("mov r2, #0x40" : "=r"(direction));
            }
        }
        OvlFunc_946_2009774(0xa, 0, -direction);
    } else if (y == 0xa) {
        if ((unsigned)(other_x - 0x1f) <= 2)
            return;
        {
            register int test asm("r3");
            asm volatile("mov r3, r5" : "=r"(test) : "r"(near_x));
            if ((unsigned)(test - 0x1f) <= 2)
                return;
        }
        asm volatile("mov r2, #0x30" : "=r"(direction));
        OvlFunc_946_2009774(0xa, 0, -direction);
    } else if (y == 7) {
        return;
    }

    __WaitFrames(2);
    other_x = *(int *)(__MapActor_GetActor(0xa) + 0x10) >> 20;
    next_x = x - 1;
    __Func_8010704(next_x, y, 3, 1, next_x, other_x);
    __Func_8010704(0, 0, 3, 1, next_x, y);
}
