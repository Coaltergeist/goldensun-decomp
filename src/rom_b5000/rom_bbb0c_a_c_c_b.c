/* Cluster Func_80bf65c..Func_80bf65c extracted from goldensun/asm/rom_b5000/rom_bbb0c_a_c_c.s.
 *
 * Total .text for this TU computed at build time from expected/.../.o.
 * Preserves the original ROM layout when slotted between
 * asm/rom_b5000/rom_bbb0c_a_c_c_a.o and asm/rom_b5000/rom_bbb0c_a_c_c_c.o in
 * goldensun/stage1.ld.
 */
extern void Func_80bf5a8(void);

unsigned int Func_80bf65c(void) {
    register int i;
    for (i = 0x13; i >= 0; i--) {
        Func_80bf5a8();
    }
    return 0;
}
