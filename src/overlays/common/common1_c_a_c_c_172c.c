#include "gba/types.h"

extern u32 __Random(void);
extern void __vec3_translate(int x, int y, int *position);
extern u8 *__CreateActor(int actorType, int x, int y, int z);
extern void __Actor_SetSpriteFlags(u8 *actor, int flags);
extern void __Actor_SetScript(u8 *actor, const void *script);
extern void __Actor_SetAnim(u8 *actor, int animation);
extern const u8 L7[] asm(".L7");

void OvlFunc_common1_172c(u8 *actor)
{
    int position[3];
    register u8 *actorPtr asm("r5") = actor;
    u8 *created;
    register int px asm("r1");
    register int py asm("r2");
    register int pz asm("r3");
label_shift:
label_shift_two:

    if ((u32)(*(int *)(actorPtr + 0x28) + 0xff) <= 0x1fe)
        actorPtr[0x55] = 0;

    if (((__Random() * 100) >> 16) <= 9) {
        position[0] = *(int *)(actorPtr + 8);
        position[1] = *(int *)(actorPtr + 0xc);
        position[2] = *(int *)(actorPtr + 0x10);
        __vec3_translate(__Random() << 4, __Random(), position);
        asm volatile (
            "ldr r1, [r6]\n\t"
            "ldr r2, [r6, #4]\n\t"
            "ldr r3, [r6, #8]"
            : "=r" (px), "=r" (py), "=r" (pz)
            : "r" (position) : "memory");
        created = __CreateActor(0x11d, px, py, pz);
        if (created != 0) {
            created[0x55] = 0;
            __Actor_SetSpriteFlags(created, 0);
            __Actor_SetScript(created, L7);
            __Actor_SetAnim(created, 1);
            __Actor_SetAnim(created, 0);
        }
    }
}
