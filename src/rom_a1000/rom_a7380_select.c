#include "gba/types.h"

#define SelectNoGet Func_80a7440

extern u8 iwram_3001f2c[];
extern int Func_80a77a4(int value);

/* 選択番号を初期化して取得する */
int SelectNoGet(void)
{
    register u8 **global __asm__("r3");
    register u8 *state __asm__("r5");
    register int result __asm__("r2");
    register int offset __asm__("r1");
    register u8 *address __asm__("r3");
    register int callResult __asm__("r0");
    register int minusOne __asm__("r3");

    global = (u8 **)iwram_3001f2c;
    __asm__ volatile ("" : "+r" (global));
    state = *global;
    __asm__ volatile ("" : "+r" (state));
    result = 0;
    __asm__ volatile ("" : "+r" (result));
    offset = 0xba;
    __asm__ volatile ("" : "+r" (offset));
    offset <<= 1;
    __asm__ volatile ("" : "+r" (offset));
    address = state + offset;
    __asm__ volatile ("" : "+r" (address));
    *(u16 *)address = result;
    callResult = Func_80a77a4(0);
    minusOne = 1;
    __asm__ volatile ("" : "+r" (minusOne));
    minusOne = -minusOne;
    __asm__ volatile ("" : "+r" (minusOne));
    result = callResult;
    __asm__ volatile ("" : "+r" (callResult), "+r" (result));
    if (callResult != minusOne) {
        offset = 0x21a;
        __asm__ volatile ("" : "+r" (offset));
        address = state + offset;
        __asm__ volatile ("" : "+r" (address));
        result = *address;
    }
    return result;
}
