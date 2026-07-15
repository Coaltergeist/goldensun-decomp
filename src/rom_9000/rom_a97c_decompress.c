#include "gba/types.h"

u8 *DecompressSpriteLZ(const u8 *src, u8 *dst)
{
    register int token asm("r4");
    register u8 *out asm("r5");
    register const u8 *literal asm("r6");
    register const u8 *cursor asm("r7");
    register u8 *start asm("r12");
    register unsigned flags asm("r1");
    register int count asm("r2");
    register unsigned scratch asm("r3");
    register const u8 *stream asm("r0");

    token = src[0] | (src[1] << 8);
    out = dst;
    literal = src + 2;
    if (token == 0)
        return (u8 *)literal;

    stream = src;
    asm volatile(
        "add r0, r4\n"
        "ldrb r1, [r0]\n"
        "mov r3, #0x80\n"
        "lsl r3, r3, #1"
        : "+r"(stream), "=r"(flags), "=r"(scratch)
        : "r"(token));
    cursor = literal;
    start = out;
    goto reload_join;

copy_match:
    count = token >> 12;
    if (count == 0) {
        scratch = *stream;
        asm("" : "+r"(scratch));
        count = scratch;
        count += 0x10;
        asm("" : "+r"(count));
        stream++;
    }
    count += 2;
    token &= 0xfff;
    token = (unsigned)(cursor - token);
    while (count != 0) {
        *out++ = *(const u8 *)token++;
        count--;
    }

next_bit:
    flags >>= 1;
    if (flags != 0)
        goto test_bit;
    asm volatile(
        "ldrb r1, [r0]\n"
        "mov r3, #0x80\n"
        "lsl r3, r3, #1"
        : "=r"(flags), "=r"(scratch)
        : "r"(stream));

reload_join:
    stream++;
    flags |= scratch;

test_bit:
    if (flags & 1) {
        if (flags != 1)
            *out++ = *literal++;
        goto next_bit;
    }

    scratch = *stream;
    stream++;
    token = scratch << 8;
    scratch = *stream;
    token |= scratch;
    stream++;
    if (token != 0)
        goto copy_match;
    return start;
}
