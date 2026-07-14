#include "gba/types.h"

extern u8 ewram_2002240[];

extern void Func_800615c(void *dest);
extern void Func_80060e8(const void *source);

union SioCnt32 {
    u32 raw;
    struct {
        u32 unused0 : 4;
        u32 multiplayerId : 2;
        u32 unused1 : 26;
    } bits;
};

u32 Func_8006088(const void *a, void *b)
{
    union SioCnt32 siocnt;
    u8 *state = ewram_2002240;
    register u32 value asm("r2");
    u32 result;

    siocnt.raw = *(vu32 *)0x04000128;

    if (state[1] == 1) {
        Func_800615c(b);
        Func_80060e8(a);
        state[0xb]++;
    }

    value = state[3] | (state[2] << 8);
    if (state[0] == 8) {
        value |= 0x80;
    }

    asm volatile("" : "+r"(value));

    result = value;
    if (state[9] != 0) {
        result |= 0x1000;
    }
    {
        u32 multiplayerId = siocnt.bits.multiplayerId;
        if (multiplayerId > 1) {
            result |= 0x2000;
        }
    }

    return result;
}
