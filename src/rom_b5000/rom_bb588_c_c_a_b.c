/* Cluster Func_80bbabc..Func_80bbabc extracted from goldensun/asm/rom_b5000/rom_bb588_c_c_a.s.
 *
 * Total .text for this TU computed at build time from expected/.../.o.
 * Preserves the original ROM layout when slotted between
 * asm/rom_b5000/rom_bb588_c_c_a_a.o and asm/rom_b5000/rom_bb588_c_c_a_c.o in
 * goldensun/stage1.ld.
 */
/* Func_80bbabc @ 0x080bbabc  [asm/rom_b5000/rom_bb588_c_c_a.s]
 * Queue push off *iwram_3001e74: byte array at +0x6b8 (0xd7<<3), word array
 * at +0x6f8 (= base+0x40), count at +0x7fc. pop {r1}; bx r1 with r0 = arg0
 * untouched -> function returns arg0.
 */
extern unsigned int iwram_3001e74;

unsigned int Func_80bbabc(unsigned int arg0, unsigned int arg1)
{
    unsigned char *base;
    unsigned int *count;
    unsigned int i;
    unsigned int ofs;

    base = (unsigned char *)iwram_3001e74 + 0x6b8;
    count = (unsigned int *)((unsigned char *)iwram_3001e74 + 0x7fc);
    i = *count;
    ofs = (i << 2) + 0x40;
    base[i] = arg0;
    *(unsigned int *)(base + ofs) = arg1;
    *count = i + 1;
    return arg0;
}
