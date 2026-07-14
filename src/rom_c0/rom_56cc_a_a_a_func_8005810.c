#include "gba/types.h"

extern u8 *gSaveWorkspace asm("iwram_3001f1c");
extern u32 Func_8005b24(u32);
extern u32 Random(void);

u32 Func_8005810(u32 value)
{
    u32 indices[16];
    register u8 *base asm("r2") = gSaveWorkspace;
    u32 count = 0;
    register u32 i asm("r5") = 0;
    u32 result;

    do {
        if (*base++ == 0) {
            indices[count] = i;
            count++;
        }
        i++;
    } while (i <= 0xf);

    result = 0x10;
    if (count != 0) {
        if (count == 1) {
            result = indices[0];
            if (Func_8005b24(value) == 0x10) {
                result = 0x10;
            }
        } else {
            register u32 idx asm("r5") = Random() % count;
            register u32 *arr asm("r2") = indices;
            register u32 offset asm("r3");
            asm volatile("" : "+r"(idx));
            offset = idx << 2;
            asm volatile("" : "+r"(offset));
            result = *(u32 *)((u8 *)arr + offset);
        }
    }

    return result;
}
