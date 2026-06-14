// fakematch
/* Cluster Func_80f40b4..Func_80f40b4 extracted from goldensun/asm/rom_f4000/rom_f4008_a.s.
 *
 * Total .text for this TU computed at build time from expected/.../.o.
 * Preserves the original ROM layout when slotted between
 * asm/rom_f4000/rom_f4008_a_a.o and asm/rom_f4000/rom_f4008_a_c.o in
 * goldensun/stage1.ld.
 */
/* Func_80f40b4 @ 0x080f40b4  [asm/rom_f4000/rom_f4008_a.s]
 * Fixed-point multiply: (s16)((a*b)/256); the /256 truncating division gives
 * the +0xff negative bias; the final lsl#8/asr#16 is the s16 return cast.
 * NOTE: ROM pushes lr in a leaf (pop {r1}; bx r1 return); watch the diff.
 */

short Func_80f40b4(short a, short b)
{
    register int x __asm__("r0");
    register int y __asm__("r3");
    register int v __asm__("r0");
    int sa, sb;

    sa = a << 16;
    sb = b << 16;
    sb >>= 16;
    sa >>= 16;
    x = sa * sb;
    __asm__ ("" : "=r" (y) : "0" (x));
    if (x < 0)
        y += 0xff;
    v = y << 8;
    v >>= 16;
    __asm__ volatile ("" : : "r" (v));
    return (short)v;
}
