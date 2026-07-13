#include "gba/types.h"

extern s16 Lb41ac[] __asm__(".Lb41ac");

extern s32 _GetFlag(u32 flag);
extern void _SetFlag(u32 flag);
extern void _Func_8078ad0(s32 value, u32 mode);

/* 一度だけイベント用の値を登録する */
void Func_80b26cc(s32 index)
{
    register s32 work __asm__("r6");
    register u32 item __asm__("r5") = index;

    work = item + 0x400;
    if (_GetFlag(work) == 0) {
        register s32 offset __asm__("r2");
        register s32 scaled __asm__("r3");
        register s16 *table __asm__("r1");
        register s32 value __asm__("r0");

        _SetFlag(work);
        scaled = (item << 5) + item;
        offset = scaled << 1;
        table = Lb41ac;
        scaled = offset;
        scaled += 0x30;
        value = *(s16 *)((u8 *)table + scaled);
        work = 0;
        if (value != 0) {
            scaled = offset + (u32)table;
            __asm__ volatile ("" : "+r" (scaled));
            item = scaled;
            item += 0x30;
            do {
                _Func_8078ad0(value, 1);
                work++;
                if (work > 7)
                    break;
                item += 2;
                value = *(s16 *)item;
            } while (value != 0);
        }
    }
}
