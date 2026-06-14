// fakematch
/* Cluster SetFlagNybble..SetFlagNybble extracted from goldensun/asm/rom_77000/rom_79338_c.s.
 *
 * Total .text for this TU computed at build time from expected/.../.o.
 * Preserves the original ROM layout when slotted between
 * asm/rom_77000/rom_79338_c_a.o and asm/rom_77000/rom_79338_c_c.o in
 * goldensun/stage1.ld.
 */
/* SetFlagNybble @ 0x08079434  (was Func_8079434)  [asm/rom_77000/rom_79338.s]
 * gFlags[(id&0xfff)>>3]: replace the nybble selected by (id&4) with value&0xf
 * (bic+orr). push {r5,r6,lr}; r4 scratch unsaved (-fcall-used-r4).
 */
extern unsigned char gFlags[];

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
