#include "gba/types.h"

extern u8 iwram_3001e70[];

void OvlFunc_947_200901c(u32 param1, u32 param2, u32 param3, u32 *src)
{
    u8 *bufferTable = *(u8 **)iwram_3001e70;

    if (bufferTable != 0) {
        u32 offset = (param1 * 3) << 4;
        u8 *tileBuffer;
        u8 *dst;
        register u32 shiftSrc asm("r3");
        register u32 andOperand asm("r1");
        register u32 acc asm("r2");

        offset += 0x130;
        tileBuffer = *(u8 **)(bufferTable + offset);
        dst = tileBuffer + ((param2 + (param3 << 7)) << 2);

        shiftSrc = *src;
        asm volatile("" : "+r"(shiftSrc));
        andOperand = dst[1];
        asm volatile("" : "+r"(shiftSrc), "+r"(andOperand));
        shiftSrc <<= 18;
        acc = 49;
        asm volatile("" : "+r"(shiftSrc), "+r"(acc));
        shiftSrc >>= 30;
        acc = -acc;
        asm volatile("" : "+r"(shiftSrc), "+r"(acc));
        shiftSrc <<= 4;
        asm volatile("" : "+r"(shiftSrc), "+r"(acc), "+r"(andOperand));
        acc &= andOperand;
        asm volatile("" : "+r"(acc));
        acc |= shiftSrc;
        dst[1] = acc;

        shiftSrc = ((u8 *)src)[1];
        asm volatile("" : "+r"(shiftSrc));
        andOperand = 0x3F;
        asm volatile("" : "+r"(shiftSrc), "+r"(andOperand));
        shiftSrc >>= 6;
        shiftSrc <<= 6;
        asm volatile("" : "+r"(shiftSrc), "+r"(acc), "+r"(andOperand));
        acc &= andOperand;
        acc |= shiftSrc;
        dst[1] = acc;

        dst[2] = ((u8 *)src)[2];
        dst[3] = ((u8 *)src)[3];
    }
}
