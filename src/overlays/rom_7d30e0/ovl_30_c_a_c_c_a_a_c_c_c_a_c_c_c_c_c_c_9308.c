typedef unsigned char u8;
typedef signed short s16;
typedef unsigned short u16;
extern u8 *iwram_3001ebc;
extern u8 gState[];
extern u8 *__MapActor_GetActor(int);
extern int __GetFlag(int);
extern void __SetFlag(int);

void OvlFunc_948_2009308(void)
{
    u8 *actor = __MapActor_GetActor(0);
    u8 *state;
    register int rawX asm("r3") = *(int *)(actor + 8);
    register int rawY asm("r0");
    register int y asm("r5");
    register int x asm("r6");
    if (rawX < 0) {
        register int round asm("r1");
        asm volatile("ldr r1, =0xfffff" : "=r"(round));
        rawX += round;
    }
    rawY = *(int *)(actor + 0x10);
    x = rawX >> 20;
    if (rawY < 0) {
        register int round asm("r2");
        asm volatile("ldr r2, =0xfffff" : "=r"(round));
        rawY += round;
    }
    y = rawY >> 20;
    asm volatile("" : "+r"(x), "+r"(y));
    { register int flag asm("r0"); register u8 *stateBase asm("r7");
      asm volatile("ldr r3, =iwram_3001ebc\n\tmov r0, #0x88\n\tlsl r0, #2\n\tldr r7, [r3]" : "=r"(flag), "=r"(stateBase) : : "r3");
      state = stateBase;
    if (__GetFlag(flag) == 0) {
        register int first asm("r3"); register u8 *base asm("r2");
        asm volatile("ldr r2, =gState\n\tmov r1, #0x93\n\tlsl r1, #2\n\tadd r3, r2, r1\n\tmov r1, #0\n\tldrsh r3, [r3, r1]" : "=r"(first), "=r"(base) : : "r1");
        if (first == 0) {
            register int second asm("r3");
            asm volatile("ldr r1, =0x24a\n\tadd r3, r2, r1\n\tmov r2, #0\n\tldrsh r3, [r3, r2]" : "=r"(second) : "r"(base) : "r1", "r2");
            if (second != 8) {
            register unsigned dx asm("r3") = x;
            asm volatile("" : "+r"(dx));
            if (dx - 0x15 <= 2 && y > 9 && y <= 0xb) {
                register int setFlag asm("r0"); asm volatile("mov r0, #0x88\n\tlsl r0, #2" : "=r"(setFlag)); __SetFlag(setFlag);
                { register u16 *dest asm("r2"); register int offset asm("r3") = 0xc1; register int value asm("r3");
                  asm volatile("" : "+r"(offset)); offset <<= 1; dest = (u16 *)(state + offset);
                  value = 0x5b; asm volatile("" : "+r"(value), "+r"(dest)); *dest = value; }
            }
            }
        }
    }
    }
}
