/* Cluster Func_800488c..Func_800488c extracted from goldensun/asm/rom_c0/rom_4858_a.s.
 *
 * Total .text for this TU computed at build time from expected/.../.o.
 * Preserves the original ROM layout when slotted between
 * asm/rom_c0/rom_4858_a_a.o and asm/rom_c0/rom_4858_a_c.o in
 * goldensun/stage1.ld.
 */
extern unsigned int gIWRAMHeap_end;
extern unsigned int gPtrs[];

unsigned int Func_800488c(void) {
    return (unsigned int)&gIWRAMHeap_end - gPtrs[1];
}
