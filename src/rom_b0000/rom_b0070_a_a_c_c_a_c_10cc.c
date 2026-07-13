#include "gba/types.h"

extern u8 iwram_3001f2c[];
extern u8 gState[];

extern void _Func_801e7c0(u32 text, u32 window, u32 x, u32 y);
extern void _Func_801ea08(u32 value, u32 digits, u32 window, u32 x, u32 flags);

/* メニューの所持金を表示する */
void Func_80b10cc(void)
{
    u32 window = *(u32 *)(*(u32 *)iwram_3001f2c + 0xc);

    if (window != 0) {
        register u8 *state __asm__("r3");

        _Func_801e7c0(0xc8a, window, 0, 0);
        state = gState;
        __asm__ volatile ("" : "+r" (state));
        _Func_801ea08(*(u32 *)(state + 0x10), 6, window, 0x20, 8);
    }
}
