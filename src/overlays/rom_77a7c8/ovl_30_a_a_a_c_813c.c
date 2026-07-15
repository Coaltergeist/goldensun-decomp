#include "gba/types.h"

extern u32 iwram_3001e40;
extern u8 *__CreateActor(int type, int x, int y, int z);
extern void __PlaySound(int sound);
extern void __Actor_SetSpriteFlags(u8 *actor, int flags);
extern void __Actor_SetAnim(u8 *actor, int animation);
extern void OvlFunc_881_200811c(void);

void OvlFunc_881_200813c(u8 *sourceArg)
{
    register u8 *source asm("r0") = sourceArg;
    register int scale asm("r3");
    register u8 *actor asm("r6");
    register int zero asm("r5");
    register int px asm("r1");
    register int py asm("r2");
    register int pz asm("r3");
    u8 *sprite;

    if (iwram_3001e40 & 4)
        scale = 0x14ccc;
    else
        scale = 0x10000;
    *(int *)(source + 0x18) = scale;
    *(int *)(source + 0x1c) = scale;

    if (iwram_3001e40 & 2) {
        asm volatile (
            "ldr r1, [r0, #8]\n\t"
            "ldr r2, [r0, #0xc]\n\t"
            "ldr r3, [r0, #0x10]"
            : "=r" (px), "=r" (py), "=r" (pz)
            : "r" (source) : "memory");
        actor = __CreateActor(0x11d, px, py, pz);
        __PlaySound(0xf6);
        if (actor != 0) {
            asm volatile (
                "mov r3, r6\n\t"
                "add r3, #0x55\n\t"
                "mov r5, #0\n\t"
                "strb r5, [r3]\n\t"
                "ldr r1, [r6, #0x50]\n\t"
                "mov r3, #0xd\n\t"
                "ldrb r2, [r1, #9]\n\t"
                "neg r3, r3\n\t"
                "and r3, r2\n\t"
                "mov r2, #4\n\t"
                "orr r3, r2\n\t"
                "strb r3, [r1, #9]"
                : "=r" (zero), "=r" (sprite) : "r" (actor) : "r1", "r2", "r3", "memory");
            __Actor_SetSpriteFlags(actor, 0);
            __Actor_SetAnim(actor, 1);
            asm volatile ("mov r3, r6\n\tadd r3, #0x64\n\tstrh r5, [r3]"
                          : : "r" (actor), "r" (zero) : "r3", "memory");
            *(void (**)(void))(actor + 0x6c) = OvlFunc_881_200811c;
        }
    }
}
