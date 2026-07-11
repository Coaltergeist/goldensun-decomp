/* Cluster Func_8021e48..Func_8021e48 extracted from goldensun/asm/rom_15000/rom_21dfc_a_c_c.s.
 *
 * Total .text for this TU computed at build time from expected/.../.o.
 * Preserves the original ROM layout when slotted between
 * asm/rom_15000/rom_21dfc_a_c_c_a.o and asm/rom_15000/rom_21dfc_a_c_c_c.o in
 * goldensun/stage1.ld.
 */
extern unsigned int Func_8017658(unsigned int, unsigned int, unsigned int, unsigned int);
extern unsigned int Func_8017364(void);
extern void WaitFrames(unsigned int);

unsigned int Func_8021e48(unsigned int arg0, unsigned int arg1, unsigned int arg2) {
    unsigned int r5;
    r5 = Func_8017658(arg0, arg1, arg2, 1);
    while (!Func_8017364()) {
        WaitFrames(1);
    }
    return r5;
}
