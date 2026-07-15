#include "gba/types.h"

struct MapActor {
    u8 pad00[0xa];
    s16 field0a;
    u8 pad0c[4];
    int field10;
    u8 pad14[0x46];
    u8 flags5a;
};

extern struct MapActor *__MapActor_GetActor(int actor);
extern void __CutsceneStart(void);
extern void __PlaySound(int sound);
extern void __MapActor_SetSpeed(int actor, int x, int y);
extern void __MapActor_SetAnim(int actor, int anim);
extern void __MapActor_TravelTo(int actor, int x, int y);
extern void __MapActor_WaitMovement(int actor);
extern void __CutsceneEnd(void);

void OvlFunc_891_200995c(void)
{
    struct MapActor *actor = __MapActor_GetActor(0x11);

    if (actor != 0 && (actor->field10 >> 20) == 8) {
        __CutsceneStart();
        __PlaySound(0xb9);
        asm volatile("mov r0, #0x11\n\t"
                     "ldr r1, =0x3333\n\t"
                     "ldr r2, =0x1999\n\t"
                     "bl __MapActor_SetSpeed\n\t"
                     "ldr r1, =0x3333\n\t"
                     "ldr r2, =0x1999\n\t"
                     "mov r0, #0\n\t"
                     "bl __MapActor_SetSpeed"
                     : : : "r0", "r1", "r2", "r3", "memory");
        {
            u8 *flags = (u8 *)__MapActor_GetActor(0x11);
            flags += 0x5a;
            *flags &= 0xfe;
        }
        asm volatile("mov r1, #8\n\t"
                     "mov r0, #0\n\t"
                     "bl __MapActor_SetAnim"
                     : : : "r0", "r1", "r2", "r3", "memory");
        actor = __MapActor_GetActor(0);
        __MapActor_TravelTo(0, actor->field0a, 0x88);
        __MapActor_TravelTo(0x11, 0x120, 0x78);
        __MapActor_WaitMovement(0x11);
        __MapActor_SetAnim(0, 1);
        __CutsceneEnd();
    }
}
