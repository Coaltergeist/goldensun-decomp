#include "gba/types.h"

extern u8 iwram_3001f2c[];

/* 表示位置をパーティ人数に合わせる */
s32 Func_80b2884(s32 position)
{
    register s32 result __asm__("r0") = position;
    register u8 *state __asm__("r3");
    register u32 offset __asm__("r2");
    register s32 count __asm__("r1");

    __asm__ volatile ("" : : : "lr");
    state = iwram_3001f2c;
    __asm__ volatile ("" : "+r" (state));
    offset = 0x3aa;
    __asm__ volatile ("" : "+r" (state), "+r" (offset));
    state = *(u8 **)state;
    state += offset;
    __asm__ volatile ("" : "+r" (state));
    count = 0;
    count = *(signed char *)(state + count);

    if (count == 1) {
        register s32 end __asm__("r3") = 0xd2e;
        register s32 begin __asm__("r2") = 0xd24;

        __asm__ volatile ("" : "+r" (end), "+r" (begin));
        result += end - begin;
    }
    if (count == 2) {
        register s32 end __asm__("r3") = 0xd38;
        register s32 begin __asm__("r2") = 0xd24;

        __asm__ volatile ("" : "+r" (end), "+r" (begin));
        result += end - begin;
    }
    if (count == 3) {
        register s32 end __asm__("r3") = 0xd42;
        register s32 begin __asm__("r2") = 0xd24;

        __asm__ volatile ("" : "+r" (end), "+r" (begin));
        result += end - begin;
    }
    return result;
}
