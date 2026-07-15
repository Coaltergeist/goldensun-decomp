#include "gba/types.h"

extern u8 *__MapActor_GetActor(int actor_id);
extern void __Actor_SetAnimSpeed(u8 *actor, int speed);

void OvlFunc_951_2008dd0(int actor_id, int *position, int animation,
                        int part_id, int speed)
{
    u8 *actor = __MapActor_GetActor(actor_id);
    u8 *state;

    if (actor != 0) {
        unsigned zero;

        *(int *)(actor + 8) = *position++;
        *(int *)(actor + 0xc) = *position++;
        *(int *)(actor + 0x10) = *position;
        *(u16 *)(actor + 6) = animation;
        asm volatile("ldr %0, =0" : "=r"(zero));
        actor[0x55] = zero;
        (*(u8 **)(actor + 0x50))[0x26] = zero;
        __Actor_SetAnimSpeed(actor, speed);
    }

    state = *(u8 **)(actor + 0x50);
    {
        register u8 *count_address asm("r3") = state + 0x27;
        register int initial_count asm("r3") = *count_address;
        if (initial_count != 0) {
            register int mask asm("r4") = 0xff;
            register u8 **parts asm("r0") = (u8 **)(state + 0x28);
            int count = initial_count;

            asm volatile("b 1f\n\t.align 2\n\t.pool\n1:");
            do {
                register u8 *part asm("r2") = *parts++;
                if (part[5] != part_id) {
                    int flags = part[0x16];
                    asm volatile("" : "+r"(flags));
                    flags |= mask;
                    part[5] = part_id;
                    part[0x16] = flags;
                }
            } while (--count != 0);
        }
    }
}
