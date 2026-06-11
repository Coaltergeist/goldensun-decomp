/* Cluster ToggleFlag..ToggleFlag extracted from goldensun/asm/rom_77000/rom_79338.s.
 *
 * Total .text for this TU computed at build time from expected/.../.o.
 * Preserves the original ROM layout when slotted between
 * asm/rom_77000/rom_79338_a.o and asm/rom_77000/rom_79338_c.o in
 * goldensun/stage1.ld.
 */
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
