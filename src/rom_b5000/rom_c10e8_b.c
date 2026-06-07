/* Cluster Func_80c1a24..Func_80c1a24 extracted from goldensun/asm/rom_b5000/rom_c10e8.s.
 *
 * Total .text for this TU computed at build time from expected/.../.o.
 * Preserves the original ROM layout when slotted between
 * asm/rom_b5000/rom_c10e8_a.o and asm/rom_b5000/rom_c10e8_c.o in
 * goldensun/stage1.ld.
 */
extern void SetIntrHandler(unsigned int, unsigned int, void *);

void Func_80c1a24(void) {
    SetIntrHandler(2, 0, (void *)0);
}
