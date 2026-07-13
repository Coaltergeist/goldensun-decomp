#include "gba/types.h"

extern s16 Lb41ac[] __asm__(".Lb41ac");

/* イベント用の文字列を作業領域へ写す */
s32 Func_80b2720(s32 index, s16 *dest)
{
    register s32 work __asm__("r3");
    register s16 *dest_base __asm__("r5") = dest;
    register s16 *table __asm__("r1");
    register u32 src_offset __asm__("r2");
    register s32 count __asm__("r4");

    work = (index << 5) + index;
    table = Lb41ac;
    src_offset = work << 1;
    work = *(s16 *)((u8 *)table + src_offset);
    count = 0;

    if (work != 0) {
        register s16 *write __asm__("r0") = dest_base;

        src_offset += (u32)table;
        do {
            register s32 zero __asm__("r1");

            work = *(u16 *)src_offset;
            count++;
            *write = work;
            src_offset += 2;
            write++;
            if (count > 0x17)
                break;
            zero = 0;
            work = *(s16 *)(src_offset + zero);
        } while (work != 0);
    }
    dest_base[count] = 0;
    return count;
}
