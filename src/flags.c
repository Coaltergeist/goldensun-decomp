// fakematch
/* flags.c -- consolidated TU. */
#include "nonmatching.h"

INCLUDE_ASM("asm/flags/rom_79338_a.s");

/* ToggleFlag @ 0x08079390  (was Func_8079390)  [asm/rom_77000/rom_79338.s]
 * gFlags[(id&0xfff)>>3] ^= 1<<(id&7); return new bit state (the -v|v >> 31
 * != 0 idiom). Leaf, r4 scratch with no push (-fcall-used-r4).
 */
extern unsigned char gFlags[];

int ToggleFlag(int flagID)
{
    register int f __asm__("r4") = flagID;
    register unsigned int bit __asm__("r1");
    register unsigned int tmp __asm__("r3");
    register unsigned int idx __asm__("r4");
    register unsigned char *t __asm__("r2");
    unsigned int bc;
    int v;

    __asm__ volatile ("" : : "r" (f));
    bit = 1;
    bit <<= f & 7;
    __asm__ volatile ("" : : "r" (bit));
    t = gFlags;
    __asm__ volatile ("" : : "r" (t));
    tmp = (unsigned int)f << 20;
    __asm__ volatile ("" : : "r" (tmp));
    idx = tmp >> 23;
    __asm__ volatile ("" : : "r" (idx));
    __asm__ ("" : "=r" (bc) : "0" (bit));
    t[idx] = bc ^ t[idx];
    v = t[idx] & bit;
    return (unsigned int)(-v | v) >> 31;
}

INCLUDE_ASM("asm/flags/rom_79338_c_a.s");

/* SetFlagNybble @ 0x08079434  (was Func_8079434)  [asm/rom_77000/rom_79338.s]
 * gFlags[(id&0xfff)>>3]: replace the nybble selected by (id&4) with value&0xf
 * (bic+orr). push {r5,r6,lr}; r4 scratch unsaved (-fcall-used-r4).
 */

void SetFlagNybble(int flagID, int value)
{
    register int f __asm__("r6") = flagID;
    register unsigned char *t __asm__("r4") = gFlags;
    register unsigned int tmp __asm__("r3");
    register int shift __asm__("r0");
    register int mask __asm__("r5");
    register unsigned int idx __asm__("r6");

    __asm__ volatile ("" : : "r" (f));
    __asm__ volatile ("" : : "r" (t));
    tmp = (unsigned int)f << 20;
    __asm__ volatile ("" : : "r" (tmp));
    shift = 4;
    shift &= f;
    __asm__ volatile ("" : : "r" (shift));
    mask = 0xf;
    __asm__ volatile ("" : : "r" (mask));
    idx = tmp >> 23;
    __asm__ volatile ("" : : "r" (idx));
    t[idx] = (t[idx] & ~(mask << shift)) | ((value & mask) << shift);
}
