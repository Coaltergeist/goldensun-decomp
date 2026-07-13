#include "gba/types.h"

extern u8 *_GetItemInfo(u32 item);

/* 売値を求める */
s32 Func_80b19cc(u32 item)
{
    register u32 item_id __asm__("r6") = item;
    register u32 shifted_price __asm__("r7") =
        (u32)*(u16 *)_GetItemInfo(item_id) << 16;
    register u32 flags __asm__("r2") = _GetItemInfo(item_id)[3];
    register s32 value __asm__("r5") = (s32)shifted_price >> 16;

    if ((flags & 8) != 0) {
        value = 0;
    } else if ((item_id & 0x400) != 0) {
        register s32 rounded __asm__("r3") =
            value + (s32)(shifted_price >> 31);

        value = rounded >> 1;
    } else {
        register s32 doubled __asm__("r3") = value << 1;
        register s32 adjusted __asm__("r0") = doubled + value;

        if (adjusted < 0)
            adjusted += 3;
        value = adjusted >> 2;
    }
    return value;
}
