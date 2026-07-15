#include "gba/types.h"

extern u32 iwram_3001e40;
extern void __Actor_SetColorswap(u8 *actor, int colorswap);
extern int __sin(int angle);
extern int Func_8000888(int value, int scale);
extern void __vec3_translate(int x, int y, int *position);

void OvlFunc_881_20081c4(u8 *actorArg)
{
    register u8 *actor asm("r6") = actorArg;
    register s16 *angle asm("r5");
    register int value asm("r0");
    register int translation asm("r4");

    if (iwram_3001e40 & 2)
        __Actor_SetColorswap(actor, 10);
    else
        __Actor_SetColorswap(actor, 7);

    if (*(s16 *)(actor + 0x66) == 0) {
        asm volatile (
            "ldr r3, =0x15d00000\n\t"
            "mov r5, r6\n\t"
            "str r3, [r6, #8]\n\t"
            "add r5, #0x64"
            : "=r" (angle) : "r" (actor) : "r3", "memory");
        value = __sin(*angle << 3);
        asm volatile (
            "mov r1, #0x80\n\t"
            "ldr r3, =Func_8000888\n\t"
            "lsl r1, #11\n\t"
            "mov r12, pc\n\tbx r3"
            : "+r" (value) : : "r1", "r3", "lr", "cc", "memory");
        asm volatile (
            "mov r4, #0x80\n\t"
            "lsl r4, #13\n\t"
            "mov r3, #0xa6\n\t"
            "add r0, r4\n\t"
            "lsl r3, #19\n\t"
            "str r0, [r6, #0xc]\n\t"
            "str r3, [r6, #0x10]"
            : "+r" (value), "=r" (translation) : "r" (actor) : "r3", "memory");
        __vec3_translate(translation, *angle, (int *)(actor + 8));
        *(u16 *)(actor + 6) = *angle + 0x4000;
        *angle += 0x400;
    }
}
