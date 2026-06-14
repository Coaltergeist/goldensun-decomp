/* Cluster Func_801b228..Func_801b228 extracted from goldensun/asm/rom_15000/rom_1aeec_a_a_c_a.s.
 *
 * Total .text for this TU computed at build time from expected/.../.o.
 * Preserves the original ROM layout when slotted between
 * asm/rom_15000/rom_1aeec_a_a_c_a_a.o and asm/rom_15000/rom_1aeec_a_a_c_a_c.o in
 * goldensun/stage1.ld.
 */
extern unsigned int iwram_3001e98;
void DisplayMenuArrowCursor2(int param_1, int param_2);

void Func_801b228(void) {
    unsigned int r5;
    r5 = iwram_3001e98;
    DisplayMenuArrowCursor2(r5, 0);
    DisplayMenuArrowCursor2(r5, 1);
}
