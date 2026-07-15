#include "gba/types.h"

extern u8 gState[];
extern int __GetFlag(int flag);
extern void __SetFlag(int flag);
extern void OvlFunc_931_2008904(void);
extern void OvlFunc_931_2008b2c(void);

int OvlFunc_931_2008874(void)
{
    register int map asm("r2");
    register int compare asm("r3");

    if (__GetFlag(0x8fd))
        __SetFlag(0x240);

    if (__GetFlag(0x8fe) || __GetFlag(0x907))
        __SetFlag(0x241);

    if (__GetFlag(0x8fe) && __GetFlag(0x907))
        __SetFlag(0x242);

    asm volatile (
        "ldr r3, =gState\n\t"
        "mov r1, #0xe0\n\t"
        "lsl r1, #1\n\t"
        "add r3, r1\n\t"
        "mov r1, #0\n\t"
        "ldrsh r2, [r3, r1]"
        : "=r" (map) : : "r1", "r3", "memory");
    asm volatile ("ldr r3, =0x4b" : "=r" (compare));
    if (map == compare)
        OvlFunc_931_2008904();
    else {
        asm volatile ("ldr r3, =0x4c" : "=r" (compare));
        if (map == compare)
            OvlFunc_931_2008b2c();
    }

    return 0;
}
