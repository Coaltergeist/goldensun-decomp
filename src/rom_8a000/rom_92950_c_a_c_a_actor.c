#include "gba/types.h"

extern u8 iwram_3001ebc[];

int Func_8092ba8(unsigned int actor_id)
{
    u8 *state = *(u8 **)iwram_3001ebc;
    unsigned int offset = 0xfff;
    u8 *actor;
    register int result __asm__("r1");

    offset &= actor_id;
    offset <<= 2;
    __asm__ volatile ("add\t%0, #0x14" : "+r" (offset));
    actor = *(u8 **)(state + offset);
    __asm__ volatile (
        "mov\t%0, #1\n\t"
        "neg\t%0, %0"
        : "=r" (result)
        : "r" (actor)
    );

    if (actor != 0 && actor[0x54] == 1) {
        u8 *data = *(u8 **)(actor + 0x50);
        s16 *value = *(s16 **)(data + 0x28);
        result = *value;
    }
    return result;
}
